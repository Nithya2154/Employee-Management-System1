package pack;

public class Employee {
private int eid;
private String ename,edep;
private float esal;
private String edoj;
public Employee(int eid, String ename, String edep, float esal, String edoj) {
	super();
	this.eid = eid;
	this.ename = ename;
	this.edep = edep;
	this.esal = esal;
	this.edoj = edoj;
}
public int getEid() {
	return eid;
}
public void setEid(int eid) {
	this.eid = eid;
}
public String getEname() {
	return ename;
}
public void setEname(String ename) {
	this.ename = ename;
}
public String getEdep() {
	return edep;
}
public void setEdep(String edep) {
	this.edep = edep;
}
public float getEsal() {
	return esal;
}
public void setEsal(float esal) {
	this.esal = esal;
}
public String getEdoj() {
	return edoj;
}
public void setEdoj(String edoj) {
	this.edoj = edoj;
}

}
