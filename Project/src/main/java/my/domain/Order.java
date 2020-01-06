package my.domain;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

import my.util.BasePo;

/**
 *
 * This class was generated by MyBatis Generator.
 * This class corresponds to the database table order
 */
public class Order extends BasePo implements Serializable {
    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column order.id
     *
     * @mbg.generated
     */
    private Long id;

    private Long clientid;
    
    private String clientName; 
    
	public String getClientName() {
		return clientName;
	}

	public void setClientName(String clientName) {
		this.clientName = clientName;
	}
	
    private String clientAddress;
    
    public String getClientAddress() {
		return clientAddress;
	}

	public void setClientAddress(String clientAddress) {
		this.clientAddress = clientAddress;
	}
	
	private BigDecimal totalPrice;

    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss",timezone="GMT+8")    
    private Date createtime;
    
    private String state;

    public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}
    
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table order
     *
     * @mbg.generated
     */
    private static final long serialVersionUID = 1L;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column order.id
     *
     * @return the value of order.id
     *
     * @mbg.generated
     */
    public Long getId() {
        return id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column order.id
     *
     * @param id the value for order.id
     *
     * @mbg.generated
     */
    public void setId(Long id) {
        this.id = id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column order.clientId
     *
     * @return the value of order.clientId
     *
     * @mbg.generated
     */
    public Long getClientid() {
        return clientid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column order.clientId
     *
     * @param clientid the value for order.clientId
     *
     * @mbg.generated
     */
    public void setClientid(Long clientid) {
        this.clientid = clientid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column order.total_price
     *
     * @return the value of order.total_price
     *
     * @mbg.generated
     */
    public BigDecimal getTotalPrice() {
        return totalPrice;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column order.total_price
     *
     * @param totalPrice the value for order.total_price
     *
     * @mbg.generated
     */
    public void setTotalPrice(BigDecimal totalPrice) {
        this.totalPrice = totalPrice;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column order.createTime
     *
     * @return the value of order.createTime
     *
     * @mbg.generated
     */
    public Date getCreatetime() {
        return createtime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column order.createTime
     *
     * @param createtime the value for order.createTime
     *
     * @mbg.generated
     */
    public void setCreatetime(Date createtime) {
        this.createtime = createtime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table order
     *
     * @mbg.generated
     */
    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", id=").append(id);
        sb.append(", clientid=").append(clientid);
        sb.append(", totalPrice=").append(totalPrice);
        sb.append(", createtime=").append(createtime);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}