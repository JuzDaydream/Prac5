using System;
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
                rolesArray = Roles.GetAllRoles();
                lstRole.DataSource = rolesArray;
                lstRole.DataBind();

                lstUser.DataSource = Membership.GetAllUsers();
                lstUser.DataBind();
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
                    lstRole.DataSource = Roles.GetAllRoles();
                    lstRole.DataBind();
                }
            }
            catch (Exception ex)
            {
                //Display Error

            }
        }

        protected void btnAssignRole_Click(object sender, EventArgs e)
        {
            Roles.AddUserToRole(lstUser.SelectedItem.Text,lstRole.SelectedItem.Text);
        }
    }
}