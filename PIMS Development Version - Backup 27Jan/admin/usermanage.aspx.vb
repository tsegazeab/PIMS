Imports System.IO
Imports System.Data
Imports Telerik.Web.UI

Partial Class admin_usermanage
    Inherits System.Web.UI.Page

    Protected Sub View1_Activate(sender As Object, e As System.EventArgs) Handles View1.Activate
        Dim rolesCheck As CheckBoxList = CType(CreateUserWizard1.CreateUserStep.ContentTemplateContainer.FindControl("RolesCheck"), CheckBoxList)
        rolesCheck.DataSource = Roles.GetAllRoles
        rolesCheck.DataBind()
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If User.Identity.IsAuthenticated Then
            If Not User.IsInRole("Administrators") Or User.IsInRole("SysAdmin") Then
                Response.Redirect("~/index.aspx")
            End If


            If IsPostBack = False Then

                MultiView1.ActiveViewIndex = 0

            End If

            lblLoggedin.Text = Membership.GetUser.LastLoginDate

            If Not Membership.GetUser Is Nothing Then
                'RadToolBar1.Items(3).Text = " Totoal " & Membership.GetAllUsers.Count
                'RadToolBar1.FindControl("lblTotalUsers") = Membership.GetAllUsers.Count

            End If

            'Getting numnber of Online users and total number users
            ' Dim myonlineusers As Integer = CType(RadToolBar1.FindControl("lblOnlineUsers"), Label).Text
            Dim myonlineusers As Label = CType(RadToolBar1.Items(4).FindControl("lblOnlineUsers"), Label)

            myonlineusers.Text = Membership.GetNumberOfUsersOnline.ToString

            Dim myTotalusers As Label = CType(RadToolBar1.Items(6).FindControl("lblTotalUsers"), Label)
            myTotalusers.Text = Membership.GetAllUsers.Count

        Else
            FormsAuthentication.RedirectToLoginPage()
        End If


        txtMessage.Text = ""

    End Sub

    Protected Sub userGrid_InsertCommand(ByVal source As Object, ByVal e As Telerik.Web.UI.GridCommandEventArgs) Handles userGrid.InsertCommand
        e.Canceled = True
        MultiView1.ActiveViewIndex = 0
    End Sub

    Protected Sub userGrid_ItemCommand(ByVal source As Object, ByVal e As Telerik.Web.UI.GridCommandEventArgs) Handles userGrid.ItemCommand
        If e.CommandName = RadGrid.InitInsertCommandName Then
            e.Canceled = True
            MultiView1.ActiveViewIndex = 0

            Response.Redirect("~/admin/usermanage.aspx")
        End If

    End Sub

    Protected Sub CreateUserWizard1_CreatedUser(sender As Object, e As System.EventArgs) Handles CreateUserWizard1.CreatedUser
        Dim myusername As String = CreateUserWizard1.UserName

        personalsrc.InsertParameters("username").DefaultValue = myusername
        personalsrc.Insert()

        jobpreferencesrc.InsertParameters("username").DefaultValue = CreateUserWizard1.UserName
        
        jobpreferencesrc.Insert()

        'add user to roles
        Dim rolesCheck As CheckBoxList = CType(CreateUserWizard1.CreateUserStep.ContentTemplateContainer.FindControl("RolesCheck"), CheckBoxList)
        For Each item As ListItem In rolesCheck.Items
            If item.Selected Then
                Dim roleName As String = (From r In Roles.GetAllRoles Where r = item.Text Select r).SingleOrDefault
                'add to role
                Roles.AddUserToRole(CreateUserWizard1.UserName, roleName)
            End If
        Next

        'Create a profile for the user
        Dim p As ProfileCommon = ProfileCommon.Create(CreateUserWizard1.UserName, True)
        p.Save()
        
    End Sub

    Protected Sub CreateUserWizard1_ContinueButtonClick(ByVal sender As Object, ByVal e As System.EventArgs) Handles CreateUserWizard1.ContinueButtonClick
        MultiView1.ActiveViewIndex = 1
        CreateUserWizard1.ActiveStepIndex = 0

        Dim txtuname As TextBox = CType(CreateUserWizard1.CreateUserStep.ContentTemplateContainer.FindControl("UserName"), TextBox)
        txtuname.Text = String.Empty

        srcUsers.DataBind()
        userGrid.DataBind()
    End Sub

    Protected Sub userGrid_ItemDataBound(ByVal sender As Object, ByVal e As Telerik.Web.UI.GridItemEventArgs) Handles userGrid.ItemDataBound
        If TypeOf e.Item Is GridDataItem Then
            Dim item As GridDataItem = CType(e.Item, GridDataItem)
            Dim usr As MembershipUser = Membership.GetUser(item("UserName").Text)
            Dim imgEstabOfficer As Image = CType(item("statuscolumn").FindControl("imgEstabOfficer"), Image)
            Dim imgUN As Image = CType(item("statuscolumn").FindControl("imgUN"), Image)
            Dim imgadmin As Image = CType(item("statuscolumn").FindControl("imgadmin"), Image)
            'check if user is an Establishment Officer
            If Roles.IsUserInRole(usr.UserName, "Establishment Officer") Then
                imgEstabOfficer.Visible = True
                imgEstabOfficer.ToolTip = usr.UserName & " is an Establishment Officer"
            End If
            'check if UNDP
            If Roles.IsUserInRole(usr.UserName, "UNDP") Then
                imgUN.Visible = True
                imgUN.ToolTip = usr.UserName & " is UNDP Officer"
            End If
            'check if admin
            If Roles.IsUserInRole(usr.UserName, "administrators") Then
                imgadmin.Visible = True
                imgadmin.ToolTip = usr.UserName & " is Administrator"
            End If
            'check if user is disabled
            If Not usr.IsApproved Then
                item.ForeColor = Drawing.Color.Red
            End If
            'check if locked out 
            If usr.IsLockedOut Then
                item.Font.Strikeout = True
            End If
        End If
    End Sub

    Protected Sub gridMenu_ItemClick(sender As Object, e As Telerik.Web.UI.RadMenuEventArgs) Handles gridMenu.ItemClick
        Dim radGridClickedRowIndex As Integer
        radGridClickedRowIndex = Convert.ToInt32(Request.Form("radGridClickedRowIndex"))
        Dim item As GridDataItem = CType(userGrid.Items(radGridClickedRowIndex), GridDataItem)
        Dim usr As MembershipUser = Membership.GetUser(item("UserName").Text)
        Select Case e.Item.Text
            Case "Enable/Disable User"
                If Not userGrid.SelectedItems.Count > 1 Then
                    If usr.IsApproved = True Then
                        usr.IsApproved = False
                    Else
                        usr.IsApproved = True
                    End If
                    Membership.UpdateUser(usr)
                Else
                    For Each useritem As GridDataItem In userGrid.SelectedItems
                        Dim mu As MembershipUser = Membership.GetUser(useritem("UserName").Text)
                        If mu.IsApproved = True Then
                            mu.IsApproved = False
                        Else
                            mu.IsApproved = True
                        End If
                        Membership.UpdateUser(mu)
                    Next
                End If

            Case "Unlock User"
                If Not userGrid.SelectedItems.Count > 1 Then
                    If usr.IsLockedOut = True Then
                        usr.UnlockUser()
                    End If
                    Membership.UpdateUser(usr)
                Else
                    For Each useritem As GridDataItem In userGrid.SelectedItems
                        Dim mu As MembershipUser = Membership.GetUser(useritem("UserName").Text)
                        If mu.IsLockedOut = True Then
                            mu.UnlockUser()
                        End If
                        Membership.UpdateUser(mu)
                    Next
                End If

            Case "Remove user(s)"
                If Not userGrid.SelectedItems.Count > 1 Then
                    Membership.DeleteUser(usr.UserName, True)
                Else
                    For Each useritem As GridDataItem In userGrid.SelectedItems
                        Dim mu As MembershipUser = Membership.GetUser(useritem("UserName").Text)
                        Membership.DeleteUser(mu.UserName, True)
                    Next
                End If
            Case "Manage user roles"
                userRolesCheck.DataSource = Roles.GetAllRoles
                userRolesCheck.DataBind()
                hiddenUser.Value = usr.UserName

                For Each roleitem As ListItem In userRolesCheck.Items
                    If Roles.IsUserInRole(usr.UserName, roleitem.Text) Then
                        roleitem.Selected = True
                    Else
                        roleitem.Selected = False
                    End If
                Next
                lblassignTip.Text = "Manage roles for " & usr.UserName
                RolesTip.Show()
        End Select
        srcUsers.DataBind()
        userGrid.DataBind()
    End Sub

    Protected Sub btnUpdateRoles_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnUpdateRoles.Click
        Try
            Dim mu As MembershipUser = Membership.GetUser(hiddenUser.Value)
            'remove user from all roles
            Roles.RemoveUserFromRoles(mu.UserName, Roles.GetRolesForUser(mu.UserName))
            'add roles to user
            For Each roleitem As ListItem In userRolesCheck.Items
                If roleitem.Selected Then
                    Roles.AddUserToRole(mu.UserName, roleitem.Text)
                End If
            Next
            userGrid.DataBind()
        Catch ex As Exception
        End Try
    End Sub

    Private Sub ShowSuccessPopUp(ByVal msg As String)
        imgmsg.ImageUrl = "~/common/images/accept.png"
        lblsuccess.Text = msg
        successTip.Show()
    End Sub

    Private Sub ShowErrorMsgPopUp(ByVal errormsg As String)
        imgmsg.ImageUrl = "~/common/images/error1.png"
        lblsuccess.Text = errormsg
        successTip.Show()
    End Sub

    Protected Sub LinkButton5_Click(sender As Object, e As System.EventArgs) Handles LinkButton5.Click
        userGrid.DataBind()
        MultiView1.ActiveViewIndex = 1
    End Sub

    Protected Sub RadToolBar1_ButtonClick(sender As Object, e As Telerik.Web.UI.RadToolBarEventArgs) Handles RadToolBar1.ButtonClick
        Select Case e.Item.Text
            Case "Create new account"
                MultiView1.ActiveViewIndex = 0
                Response.Redirect("~/admin/usermanage.aspx")

            Case "Manage accounts"
                MultiView1.ActiveViewIndex = 1

            Case "Reports"
                MultiView1.ActiveViewIndex = 2

            Case "SMS"
                MultiView1.ActiveViewIndex = 3

            Case "Help"
                MultiView1.ActiveViewIndex = 4

            Case "Logout"
                FormsAuthentication.SignOut()
                'Response.Redirect("~/Account/Login.aspx")
                FormsAuthentication.RedirectToLoginPage()
        End Select
    End Sub

    Protected Sub smsTextRadio_SelectedIndexChanged(sender As Object, e As System.EventArgs) Handles smsTextRadio.SelectedIndexChanged

        If smsTextRadio.SelectedIndex = 0 Then
            txtMessage.Text = ""
        ElseIf smsTextRadio.SelectedIndex = 1 Then
            txtMessage.Text = " Thank you for registering with us." & _
                " Registering your interest does not  guarantee you a job."
        Else
            txtMessage.Text = "Please, update you information." & _
                " Recruitment Database Admin."
        End If
    End Sub
End Class
