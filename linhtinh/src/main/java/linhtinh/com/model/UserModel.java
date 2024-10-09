package linhtinh.com.model;

import java.io.Serializable;
import java.sql.Date;

public class UserModel implements Serializable {
	private static final long serialVersionUID = 1L;
	private int iduser;
	private String username;
	private String password;
	private String fullname;
	private String avartar;
	private String email;
	private String phone;
	private int roleid;
	private Date creatDate;

	public UserModel() {
		super();
	}

	public UserModel(int iduser, String username, String password, String fullname, String avartar, String email,
			String phone, int roleid, Date creatDate) {
		super();
		this.iduser = iduser;
		this.username = username;
		this.password = password;
		this.fullname = fullname;
		this.avartar = avartar;
		this.email = email;
		this.phone = phone;
		this.roleid = roleid;
		this.creatDate = creatDate;
	}

	public int getIduser() {
		return iduser;
	}

	public void setIduser(int iduser) {
		this.iduser = iduser;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getFullname() {
		return fullname;
	}

	public void setFullname(String fullname) {
		this.fullname = fullname;
	}

	public String getAvartar() {
		return avartar;
	}

	public void setAvartar(String avartar) {
		this.avartar = avartar;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public int getRoleid() {
		return roleid;
	}

	public void setRoleid(int roleid) {
		this.roleid = roleid;
	}

	public Date getCreatDate() {
		return creatDate;
	}

	public void setCreatDate(Date creatDate) {
		this.creatDate = creatDate;
	}

	@Override
	public String toString() {
		return "UserModel [iduser=" + iduser + ", username=" + username + ", password=" + password + ", fullname="
				+ fullname + ", avartar=" + avartar + ", email=" + email + ", phone=" + phone + ", roleid=" + roleid
				+ ", creatDate=" + creatDate + "]";
	}
}
