using System;
using System.Collections.Generic;
using System.DirectoryServices;
using System.Linq;
using System.Web;

namespace Pearson_User_Access_Rights.Controllers
{
    public class ActiveDirectoryHelper
    {
        public DirectorySearcher dirSearch = null;

        public void getInfo(String username, string password, string domain)
        {
            SearchResult rs = null;

            rs = SearchADUser(GetDirectorySearcher(username, password, domain), "servza.sbs");

            if (rs != null)
            {
                Console.WriteLine("Working......");

                ShowUserInformation(rs);
            }
            else
            {
                Console.WriteLine("Not Working......");
            }

        }

        private void ShowUserInformation(SearchResult rs)
        {

            if (rs.GetDirectoryEntry().Properties["samaccountname"].Value != null)
            {
                Console.WriteLine("Username : " + rs.GetDirectoryEntry().Properties["samaccountname"].Value.ToString());
            }


            if (rs.GetDirectoryEntry().Properties["givenName"].Value != null)
            {
                Console.WriteLine("Firstname : " + rs.GetDirectoryEntry().Properties["givenName"].Value.ToString());
            }

            if (rs.GetDirectoryEntry().Properties["sn"].Value != null)
            {
                Console.WriteLine("Last name : " + rs.GetDirectoryEntry().Properties["sn"].Value.ToString());
            }

            if (rs.GetDirectoryEntry().Properties["description"].Value != null)
            {
                Console.WriteLine("description : " + rs.GetDirectoryEntry().Properties["description"].Value.ToString());
            }


        }

        private SearchResult SearchADUser(DirectorySearcher ds, string usernameORemail)
        {
            try
            {
                if (usernameORemail.Contains("@"))
                {
                    ds.Filter = "(&((&(objectCategory=Person)(objectClass=User)))(mail=" + usernameORemail + "))";
                }
                else
                {
                    ds.Filter = "(&((&(objectCategory=Person)(objectClass=User)))(samaccountname=" + usernameORemail + "))";
                }

                ds.SearchScope = SearchScope.Subtree;
                ds.ServerTimeLimit = TimeSpan.FromSeconds(90);

                SearchResult userObject = ds.FindOne();
                ds.Dispose();
                if (userObject != null)
                {
                    return userObject;
                }
                else
                {
                    return null;
                }
            }
            catch (DirectoryServicesCOMException ex)
            {
                Console.WriteLine(ex.ToString());
                return null;
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.ToString());
                return null;
            }

        }

        private DirectorySearcher GetDirectorySearcher(string username, string password, string domain)
        {
            if (dirSearch == null)
            {
                try
                {
                    dirSearch = new DirectorySearcher(new DirectoryEntry("LDAP://" + domain, username, password));
                }
                catch (Exception)
                {

                    throw;
                }
                return dirSearch;
            }
            else
            {
                return dirSearch;
            }
        }


    }
}