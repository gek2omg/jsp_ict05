package useBean;

import java.util.Date;

public class MemberInfo {
    // 멤버변수
    private String id;
    private String password;
    private String name;
    private String address;
    private String email;
    private Date registerDate;

    // 디폴트 생성자

    public MemberInfo() {
        super();
    }

    // 매개변수 생성자

    public MemberInfo(String id, String password, String name, String address, String email, Date registerDate) {
        this.id = id;
        this.password = password;
        this.name = name;
        this.address = address;
        this.email = email;
        this.registerDate = registerDate;
    }


    // getter
    // setter

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Date getRegisterDate() {
        return registerDate;
    }

    public void setRegisterDate(Date registerDate) {
        this.registerDate = registerDate;
    }


    // toString()

    @Override
    public String toString() {
        return "MemberInfo{" +
                "id='" + id + '\'' +
                ", password='" + password + '\'' +
                ", name='" + name + '\'' +
                ", address='" + address + '\'' +
                ", email='" + email + '\'' +
                ", registerDate=" + registerDate +
                '}';
    }
}