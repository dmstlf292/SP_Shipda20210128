package user;



public class UserDTO {



	private String id;

	private String userPassword;

	private String userEmail;

	private String userEmailHash;

	private boolean userEmailChecked;

	

	public String getId() {

		return id;

	}

	public void setId(String id) {

		this.id = id;

	}

	public String getUserPassword() {

		return userPassword;

	}

	public void setUserPassword(String userPassword) {

		this.userPassword = userPassword;

	}

	public String getUserEmail() {

		return userEmail;

	}

	public void setUserEmail(String userEmail) {

		this.userEmail = userEmail;

	}

	public String getUserEmailHash() {

		return userEmailHash;

	}

	public void setUserEmailHash(String userEmailHash) {

		this.userEmailHash = userEmailHash;

	}

	public boolean isUserEmailChecked() {

		return userEmailChecked;

	}

	public void setUserEmailChecked(boolean userEmailChecked) {

		this.userEmailChecked = userEmailChecked;

	}

	

	public UserDTO(String id, String userPassword, String userEmail,

			String userEmailHash, boolean userEmailChecked) {

		this.id = id;

		this.userPassword = userPassword;

		this.userEmail = userEmail;

		this.userEmailHash = userEmailHash;

		this.userEmailChecked = userEmailChecked;

	}



}