﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Prac5.Maintenance
{
    public partial class ManageRole : System.Web.UI.Page
    {
        string[] rolesArray;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //Bind Role to ListView
                lstRoles.DataSource = Roles.GetAllRoles();
                lstRoles.DataBind();

                lstUsers.DataSource = Membership.GetAllUsers();
                lstUsers.DataBind();

                ddlRole.DataSource = Roles.GetAllRoles();
                ddlRole.DataBind();
            }
        }

        protected void btnCreateRole_Click(object sender, EventArgs e)
        {
            string rolename = txtRole.Text.Trim();

            try
            {
                if (Roles.RoleExists(rolename))
                {
                    //DISPLAY ERROR
                    return;
                }
                else
                {
                    //CREATE ROLE
                    Roles.CreateRole(rolename);
                    //REFRESH ROLE LIST
                    lstRoles.DataSource = Roles.GetAllRoles();
                    lstRoles.DataBind();

                    ddlRole.DataSource = Roles.GetAllRoles();
                    ddlRole.DataBind();
                }
            }
            catch (Exception ex)
            {
                //Display Error

            }
        }

        protected void btnAssignRole_Click(object sender, EventArgs e)
        {
            Roles.AddUserToRole(lstUsers.SelectedItem.Text, lstRoles.SelectedItem.Text);
        }

        protected void btnGetUser_Click(object sender, EventArgs e)
        {
            lstRoleUser.DataSource = Roles.GetUsersInRole(ddlRole.SelectedValue);
            lstRoleUser.DataBind();
        }


    }
}