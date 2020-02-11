package com.mohazi.domain;

import java.util.Date;

import lombok.Data;

@Data
public class ScheduleVO {

	private Long s_no;
	private Long p_no;
	private Date s_date;
	private Date s_time;
	private Long min_people;
	private Long max_people;
}
