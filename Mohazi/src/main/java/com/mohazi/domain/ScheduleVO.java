package com.mohazi.domain;

import java.util.Date;

import lombok.Data;

@Data
public class ScheduleVO {

	private Long s_no;
	private Long p_no;
	private String s_date;
	private String s_time;
	private Long min_people;
	private Long max_people;
}
