package practice.reservation;
/*
이름     널?       유형         
------ -------- ---------- 
RI_NO  NOT NULL NUMBER(10) 
RI_QTY          NUMBER(20) 
R_NO            NUMBER(10) 
P_NO            NUMBER(10) 
 */
public class ReservationItem {
	
	private int ri_no;
	private int ri_qty;
	private int r_no;
	private int p_no;
	
	public ReservationItem() {
		
	}

	public ReservationItem(int ri_no, int ri_qty, int r_no, int p_no) {
		super();
		this.ri_no = ri_no;
		this.ri_qty = ri_qty;
		this.r_no = r_no;
		this.p_no = p_no;
	}

	public int getRi_no() {
		return ri_no;
	}

	public void setRi_no(int ri_no) {
		this.ri_no = ri_no;
	}

	public int getRi_qty() {
		return ri_qty;
	}

	public void setRi_qty(int ri_qty) {
		this.ri_qty = ri_qty;
	}

	public int getR_no() {
		return r_no;
	}

	public void setR_no(int r_no) {
		this.r_no = r_no;
	}

	public int getP_no() {
		return p_no;
	}

	public void setP_no(int p_no) {
		this.p_no = p_no;
	}

	@Override
	public String toString() {
		return "ReservationItem [ri_no=" + ri_no + ", ri_qty=" + ri_qty + ", r_no=" + r_no + ", p_no=" + p_no + "]";
	}
	
	

}
