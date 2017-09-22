package dao;
import dao.DbConnection;
public class Registration {
	public String registrationSave(String strfname,String strlname,String stremail,String strphone,String straddress,String strgender) throws Exception {
		DbConnection db = new DbConnection();
		String sqlquery = "INSERT INTO contact(fname,lname,email,address,phone,gender) VALUES" + " ('"+ strfname +"','"+ strlname +"','"+ stremail +"','"+ strphone +"','"+ straddress +"','"+ strgender +"')";
		db.runPreparedStmt(sqlquery);
		return sqlquery;
	}
}
