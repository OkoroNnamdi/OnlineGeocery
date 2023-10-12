using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Online_Geocery.Models
{
    public class DataAccess
    {
        private SqlConnection con;
        private SqlCommand cmd;
        private SqlDataReader _reader;
        private DataTable dt;
        private SqlDataAdapter sda;
        private string Connstring;
        public DataAccess()
        {
            
            Connstring = " Data Source =.; Initial Catalog = Geocery; Integrated Security = True";
            con = new SqlConnection(Connstring);
            cmd = new SqlCommand();
            cmd.Connection = con;
        }
        public DataTable getData(string query)
        {
            dt= new DataTable();
            sda = new SqlDataAdapter(query,con);
            sda .Fill(dt);
            return dt;
        }
        public int SetData(string query)
        {
            int cnt = 0;
            if (con.State == ConnectionState.Open)
            {
                con.Close ();
            }
            con .Open ();
            cmd.CommandText = query;
            cnt = cmd.ExecuteNonQuery();
            con.Close ();
            return cnt;
        
        }
    }
}