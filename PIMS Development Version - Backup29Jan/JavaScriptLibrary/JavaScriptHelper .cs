using System;
using System.Web.UI;

[assembly: WebResource("JavaScriptLibrary.JavaScript.CloseActiveToolTip.js",
    "application/x-javascript")]

namespace JavaScriptLibrary
{

    /// <summary>
    /// Helps include embedded JavaScript files in pages.
    /// </summary>
    public class JavaScriptHelper
    {
        #region Constants

        private const string FUNCTION_CLOSEACTIVETOOLTIP = "JavaScriptLibrary.JavaScript.CloseActiveToolTip.js";
        
        #endregion

        #region Public Methods

        /// <summary>
        /// Includes ShowMessage.js in the page.
        /// </summary>
        /// <param name="manager">Accessible via Page.ClientScript.</param>
        public static void Include_CloseActiveToolTip(ClientScriptManager manager)
        {
            IncludeJavaScript(manager, FUNCTION_CLOSEACTIVETOOLTIP);
        }

        #endregion

        #region Private Methods

        /// <summary>
        /// Includes the specified embedded JavaScript file in the page.
        /// </summary>
        /// <param name="manager">Accessible via Page.ClientScript.</param>
        /// <param name="resourceName">The name used to identify the 
        /// embedded JavaScript file.
        /// </param>
        private static void IncludeJavaScript
        (ClientScriptManager manager, string resourceName)
        {
            var type = typeof(JavaScriptLibrary.JavaScriptHelper);
            manager.RegisterClientScriptResource(type, resourceName);
        }

        #endregion
    }
}