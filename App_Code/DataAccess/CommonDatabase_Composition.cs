using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;

/// <summary>
/// Summary description for CommonDatabase_Composition
/// </summary>
public class CommonDatabase_Composition
{
	public CommonDatabase_Composition()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public DataSet GetDatasetResults(string StoredProcedureName,List<SqlParameter> Parameters)
    {
        DataSet Objdataset = new DataSet();
        string CS = ConfigurationManager.ConnectionStrings["AccessoriesDB"].ConnectionString;
        SqlConnection con = new SqlConnection(CS);
        
            SqlDataAdapter adopter = new SqlDataAdapter(StoredProcedureName, con);
            adopter.Fill(Objdataset, "Image");
        
        return Objdataset;
    }
}