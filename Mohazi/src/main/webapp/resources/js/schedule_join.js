/**
 * 
 */
console.log("Schedule_join Module........");
var schedule_joinService= (function(){
	
	function add(schedule_join, callback, error){
		console.log("add schedule_join...........");
		
		$.ajax({
			type : 'post', 
			url : '/schedules_join/new',
			data : JSON.stringify(schedule_join),
			contentType : "application/json; charset = utf-8",
			success : function(result, status, xhr){
				if (callback){
					callback(result);
				}
			},
			error : function(xhr, status, er){
				if(error){
					error(er);
				}
			}
		})
	}
	
	
	function getList(param, callback, error){
		
		var s_no = param.s_no;
		console.log(s_no);
		$.getJSON("/schedules_join/list/"+s_no+".json",
				function(data){
			if(callback){
				callback(data);
			}
		}).fail(function(xhr, status, err){
			if(error){
				error();
			}
		});
	}
	
	function remove(sj_no, callback, error){
		$.ajax({
			type : 'delete',
			url : '/schedules_join/' + sj_no,
			success : function(deleteResult, status, xhr){
				if(callback){
					callback(deleteResult);
				}
			},
			error : function(xhr, status, er){
				if(error){
					error(er);
				}
			}
		});
	}
		
	
	function get(sj_no, callback, error){
		$.get("/schedules_join/" + sj_no + ".json", function(result){
			if(callback){
				callback(result);
			}
		}).fail(function(xhr, status, err){
			if(error){
				error();
			}
		});
	}
	
	function count(s_no, callback, error){
		$.ajax({
			type : "get",
			url : "/schedules_join/count/"+s_no+".json",
			async : false,		// 스케쥴 참가 인원 카운트 전 스케쥴 목록 출력하는 것 방지
			success : function(result){
				if(callback){
					callback(result);
				}
			},
			error : function(err){
				if(error){
					error(err);
				}
			}
		});
	}

	return {add: add,
			getList: getList,
			remove : remove,			
			get : get,
			count : count
			};
	
})();