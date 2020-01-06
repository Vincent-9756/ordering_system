package my.vo;

import java.io.Serializable;
import java.util.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

import my.util.BasePo;

/**
 *
 * This class was generated by MyBatis Generator.
 * This class corresponds to the database table leave_message
 */
public class LeaveMessageVo extends BasePo implements Serializable {
    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column leave_message.id
     *
     * @mbg.generated
     */
    private Long id;

    /**
     * Database Column Remarks:
     *   客户id
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column leave_message.client_id
     *
     * @mbg.generated
     */
    private Long clientId;
    
    private String clientName;
    
    public String getClientName() {
		return clientName;
	}

	public void setClientName(String clientName) {
		this.clientName = clientName;
	}

	/**
     * 菜品id
     */
    private Long dishId;
    
    private String dishName;

    public String getDishName() {
		return dishName;
	}

	public void setDishName(String dishName) {
		this.dishName = dishName;
	}

	public Long getDishId() {
		return dishId;
	}

	public void setDishId(Long dishId) {
		this.dishId = dishId;
	}

	/**
     * Database Column Remarks:
     *   客户留言
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column leave_message.message
     *
     * @mbg.generated
     */
    private String message;

    /**
     * Database Column Remarks:
     *   留言时间
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column leave_message.leave_date
     *
     * @mbg.generated
     */
    @JsonFormat(pattern = "yyyy-MM-dd",timezone = "GMT+8")
    private Date leaveDate;

    /**
     * Database Column Remarks:
     *   留言类型(1、评价；2、投诉)
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column leave_message.type
     *
     * @mbg.generated
     */
    private String type;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table leave_message
     *
     * @mbg.generated
     */
    private static final long serialVersionUID = 1L;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column leave_message.id
     *
     * @return the value of leave_message.id
     *
     * @mbg.generated
     */
    public Long getId() {
        return id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column leave_message.id
     *
     * @param id the value for leave_message.id
     *
     * @mbg.generated
     */
    public void setId(Long id) {
        this.id = id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column leave_message.client_id
     *
     * @return the value of leave_message.client_id
     *
     * @mbg.generated
     */
    public Long getClientId() {
        return clientId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column leave_message.client_id
     *
     * @param clientId the value for leave_message.client_id
     *
     * @mbg.generated
     */
    public void setClientId(Long clientId) {
        this.clientId = clientId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column leave_message.message
     *
     * @return the value of leave_message.message
     *
     * @mbg.generated
     */
    public String getMessage() {
        return message;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column leave_message.message
     *
     * @param message the value for leave_message.message
     *
     * @mbg.generated
     */
    public void setMessage(String message) {
        this.message = message == null ? null : message.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column leave_message.leave_date
     *
     * @return the value of leave_message.leave_date
     *
     * @mbg.generated
     */
    public Date getLeaveDate() {
        return leaveDate;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column leave_message.leave_date
     *
     * @param leaveDate the value for leave_message.leave_date
     *
     * @mbg.generated
     */
    public void setLeaveDate(Date leaveDate) {
        this.leaveDate = leaveDate;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column leave_message.type
     *
     * @return the value of leave_message.type
     *
     * @mbg.generated
     */
    public String getType() {
        return type;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column leave_message.type
     *
     * @param type the value for leave_message.type
     *
     * @mbg.generated
     */
    public void setType(String type) {
        this.type = type == null ? null : type.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table leave_message
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
        sb.append(", clientId=").append(clientId);
        sb.append(", message=").append(message);
        sb.append(", leaveDate=").append(leaveDate);
        sb.append(", type=").append(type);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}