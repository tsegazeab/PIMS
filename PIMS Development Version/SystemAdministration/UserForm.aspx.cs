﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SystemAdministration_UserForm : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void RegisterUser_CreatedUser(object sender, EventArgs e)
    {
        Response.Redirect(Request.RawUrl);
    }
}