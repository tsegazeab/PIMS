using System;
using System.Collections.Generic;
using System.Text;
using System.Data;
using Microsoft.Practices.EnterpriseLibrary.Data;
using System.Data.Common;

namespace PSPITS.DAL
{
    public class DataObject
    {
        public const string EXTENDED_PROPERTY_IDENTITY_COL = "IdentityColumn";

        #region Constructors

        /// <summary>
        /// This static constructor is used to initialize database connection strings
        /// once for all data access objects.
        /// </summary>
        static DataObject()
        {
            //try load these from the default settings such that the user has less initialization work
            LoadDBConStrings();
            InitDatabases();
        }

        /// <summary>
        /// Creates a new data object.
        /// </summary>
        /// <remarks>Initialisation of the database connection strings was not put
        /// in this instance constructor because we do not want to be fetching
        /// them for each data access object created. We basically retrieve them
        /// once on the creation of the first data access object in the system.
        /// </remarks>
        public DataObject(string selectedDatabase)
        {
            SelectedDatabase = selectedDatabase;
        }

        //for those who have one database, their lives are made easier with the parameterless constructor
        public DataObject()
        {
            SelectedDatabase = ConStrNames[0];
        }

        #endregion

        #region Private Variables

        /// <summary>
        /// The databse to use
        /// </summary>
        private string _selectedDatabase;

        private static List<string> _conStrNames;
        private DbTransaction _trans;
        private bool _usingTrans = false;
        DbConnection _con;

        private static Dictionary<string,Microsoft.Practices.EnterpriseLibrary.Data.Database> _dbList = new Dictionary<string,Microsoft.Practices.EnterpriseLibrary.Data.Database>();

        private Microsoft.Practices.EnterpriseLibrary.Data.Database _databaseInstance;

        /// <summary>
        /// The SQL select statement
        /// </summary>
        private string _sqlSelect;

        #endregion

        #region Private properties

        public Microsoft.Practices.EnterpriseLibrary.Data.Database DatabaseInstance
        {
            get { return _databaseInstance; }
            set { _databaseInstance = value; }
        }

        #endregion

        #region Private methods

        private static void LoadDBConStrings()
        {

        }

        /// <summary>
        /// Initialises the logics and metadata database connection strings.
        /// </summary>
        private static void InitDatabases()
        {
            try
            {
                //TODO Encrypt the connection string.
                //LogicsDatabase = DatabaseFactory.CreateDatabase(Settings.GetSetting(LOGICS_CONSTR_NAME, DEFAULT_LOGICS_CONSTR_NAME));
                //MetadataDatabase = DatabaseFactory.CreateDatabase(Settings.GetSetting(METADATA_CONSTR_NAME, DEFAULT_METADATA_CONSTR_NAME));

                if (_conStrNames == null)
                {
                    _conStrNames = new List<string>();
                    _conStrNames.Add("DefaultDatabase");
                    _dbList["DefaultDatabase"] = DatabaseFactory.CreateDatabase();
                }
                else
                {
                    foreach (string val in ConStrNames)
                        _dbList[val] = DatabaseFactory.CreateDatabase(val);
                }
            }
            catch (Exception ex)
            {
                string s = ex.Message;
            }
        }

        #endregion

        #region Public Properties

        /// <summary>
        /// The sql select command text
        /// </summary>
        public string SqlSelect
        {
            get { return _sqlSelect; }
            set { _sqlSelect = value; }
        }

        /// <summary>
        /// Checks if the data object is initialized and ready to serve.
        /// </summary>
        public bool Initialized
        {
            get { return DatabaseInstance != null; }
        }

        public static List<string> ConStrNames
        {
            get{return _conStrNames;}
            set
            {
                _conStrNames = value;

                InitDatabases();
            }
        }

        /// <summary>
        /// The selected database
        /// </summary>
        public string SelectedDatabase
        {
            get { return _selectedDatabase; }
            set
            {
                _selectedDatabase = value;

                if(_dbList.ContainsKey(_selectedDatabase))
                    DatabaseInstance = _dbList[_selectedDatabase];
            }
        }

        #endregion

        #region Public methods

        /// <summary>
        /// Gets data items
        /// </summary>
        /// <param name="SqlSelect">The SQL select statement</param>
        /// <returns>Table of rows of data</returns>
        public virtual DataSet GetData(string sqlSelect,string tableName)
        {
            return GetData(CommandType.Text, sqlSelect, tableName);
        }

        /// <summary>
        /// Gets data items
        /// </summary>
        /// <returns>Table of rows of data items</returns>
        public virtual DataSet GetData(string tableName)
        {
            if (SqlSelect == null)
                SqlSelect = "select * from " + tableName;
            return GetData(CommandType.Text, SqlSelect, tableName);
        }

        ///// <summary>
        ///// Saves data items
        ///// </summary>
        ///// <param name="dt">The dataset containting the data items to save</param>
        //public virtual void SaveData(DataTable dt)
        //{
        //    DataSet ds = new DataSet();
        //    ds.Merge(dt);

        //    SaveData(ds,dt.TableName);
        //}

        public virtual void SaveData(DataSet ds)
        {
            //We should be able to recreate the sql select statement just incase user calls us
            //more than once with the same object instance but for different table saves.
            SqlSelect = null; 
            SaveData(ds, ds.Tables[0].TableName);
        }
        /// <summary>
        /// Saves data for a given table name in a dataset.
        /// </summary>
        /// <param name="ds">the dataset</param>
        /// <param name="tableName">the name of the table in the dataset</param>
        public virtual void SaveData(DataSet ds, string tableName,DbCommand cmdInsert, DbCommand cmdUpdate, DbCommand cmdDelete)
        {
            //if (SqlSelect == null)
            //    SqlSelect = string.Format("select * from {0} where 1=2", tableName);

            //DbCommandBuilder cb = DatabaseInstance.DbProviderFactory.CreateCommandBuilder();
            //cb.DataAdapter = DatabaseInstance.GetDataAdapter();
            //cb.DataAdapter.SelectCommand = DatabaseInstance.GetSqlStringCommand(SqlSelect);
            //cb.DataAdapter.SelectCommand.Connection = DatabaseInstance.CreateConnection();
            //DbCommand cmd = cb.GetInsertCommand();

            //object identityColName = ds.Tables[tableName].ExtendedProperties[EXTENDED_PROPERTY_IDENTITY_COL];
            //if (identityColName != null)
            //{
            //    cmd.CommandText += string.Format(";select @@identity as {0}", identityColName.ToString());
            //    cmd.UpdatedRowSource = UpdateRowSource.FirstReturnedRecord;
            //}

            if (_usingTrans)
                DatabaseInstance.UpdateDataSet(ds, tableName, cmdInsert,
                   cmdUpdate,cmdDelete, _trans);
            else
                DatabaseInstance.UpdateDataSet(ds, tableName, cmdInsert,
                    cmdUpdate, cmdDelete, UpdateBehavior.Transactional);
        }
        /// <summary>
        /// Saves data for a given table name in a dataset.
        /// </summary>
        /// <param name="ds">the dataset</param>
        /// <param name="tableName">the name of the table in the dataset</param>
        public virtual void SaveData(DataSet ds,string tableName)
        {
            //DbCommand cmd = DatabaseInstance.GetStoredProcCommand("GetMemberByID");
            if (SqlSelect == null)
                SqlSelect = string.Format("select * from {0} where 1=2", tableName);

            DbCommandBuilder cb = DatabaseInstance.DbProviderFactory.CreateCommandBuilder();
            cb.DataAdapter = DatabaseInstance.GetDataAdapter();
            cb.DataAdapter.SelectCommand = DatabaseInstance.GetSqlStringCommand(SqlSelect);
            cb.DataAdapter.SelectCommand.Connection = DatabaseInstance.CreateConnection();
            DbCommand cmd = cb.GetInsertCommand();
            
            object identityColName = ds.Tables[tableName].ExtendedProperties[EXTENDED_PROPERTY_IDENTITY_COL];
            if (identityColName != null)
            {
                cmd.CommandText += string.Format(";select @@identity as {0}", identityColName.ToString());
                cmd.UpdatedRowSource = UpdateRowSource.FirstReturnedRecord;
            }

            if(_usingTrans)
                DatabaseInstance.UpdateDataSet(ds, tableName, cmd,
                    cb.GetUpdateCommand(), cb.GetDeleteCommand(), _trans);
            else
                DatabaseInstance.UpdateDataSet(ds, tableName, cmd,
                    cb.GetUpdateCommand(), cb.GetDeleteCommand(),UpdateBehavior.Transactional);
        }

        /// <summary>
        /// Saves data for a given table name in a dataset using a given sql select statement.
        /// </summary>
        /// <param name="ds">the dataset</param>
        /// <param name="tableName">the name of the table in the dataset</param>
        /// <param name="sqlSelect">the sql select statement</param>
        public virtual void SaveData(DataSet ds, string tableName, string sqlSelect)
        {
            this.SqlSelect = sqlSelect;  //dont overwrite user's sql
            SaveData(ds, tableName);
        }

        public virtual void BeginTransaction()
        {
            _con = DatabaseInstance.CreateConnection();
            _con.Open();
            _trans = _con.BeginTransaction();
            _usingTrans = true;
        }

        public virtual void CommitTransaction()
        {
            if (_trans != null)
            {
                _trans.Commit();
                _trans = null;

                _con.Close();
                _con = null;
            }
            _usingTrans = false;
        }

        public virtual void RollbackTransaction()
        {
            if (_trans != null)
            {
                _trans.Rollback();
                _trans = null;

                _con.Close();
                _con = null;
            }
            _usingTrans = false;
        }

        ///// <summary>
        ///// Saves data items
        ///// </summary>
        ///// <param name="dt">The datatable ,containting the data items to save</param>
        ///// <param name="SqlSelect">The SQL select statement that was used to fetch the data</param>
        //public virtual void SaveData(DataTable dt, string sqlSelect)
        //{
        //    DataSet ds = new DataSet();
        //    ds.Merge(dt);

        //    this.SqlSelect = sqlSelect;  //dont overwrite user's sql
        //    SaveData(ds, dt.TableName);

        //    //DbCommandBuilder cb = DatabaseInstance.DbProviderFactory.CreateCommandBuilder();
        //    //cb.DataAdapter = DatabaseInstance.GetDataAdapter();
        //    //cb.DataAdapter.SelectCommand = DatabaseInstance.GetSqlStringCommand(sqlSelect);
        //    //cb.DataAdapter.SelectCommand.Connection = DatabaseInstance.CreateConnection();
        //    //DatabaseInstance.UpdateDataSet(ds, dt.TableName, cb.GetInsertCommand(),
        //    //    cb.GetUpdateCommand(), cb.GetDeleteCommand(), UpdateBehavior.Transactional);
        //}

        //public DataTable GetData(CommandType commandType, string commandText)
        //{
        //    DataSet ds = GetData(commandType, commandText);
        //    if (ds.Tables.Count > 0)
        //        return ds.Tables[0];
        //    else
        //        return null;
        //}

        public DataSet GetData(CommandType commandType, string commandText,string tableName)
        {
            commandText = (new System.Text.RegularExpressions.Regex("= true")).Replace(commandText, " = 'true' ");
            commandText = (new System.Text.RegularExpressions.Regex("= false")).Replace(commandText, " = 'false' ");

            DataSet ds = DatabaseInstance.ExecuteDataSet(commandType, commandText);

            if (ds != null && ds.Tables.Count > 0)
                ds.Tables[0].TableName = tableName;

           return ds;
        }
        public DataSet GetData(DbCommand command, string tableName)
        {
            if (string.IsNullOrEmpty(tableName)) tableName = "fake";
            DataSet ds = DatabaseInstance.ExecuteDataSet(command);

            if (ds != null && ds.Tables.Count > 0)
                ds.Tables[0].TableName = tableName;

            return ds;
        }

        public int ExecuteNonQuery(string commandText)
        {
            return DatabaseInstance.ExecuteNonQuery(CommandType.Text, commandText);
        }

        public int ExecuteNonQuery(DbCommand command)
        {
            return DatabaseInstance.ExecuteNonQuery(command);
        }

        public int ExecuteNonQuery(CommandType commandType, string commandText)
        {
            return DatabaseInstance.ExecuteNonQuery(commandType, commandText);
        }

        #endregion
    }
}
