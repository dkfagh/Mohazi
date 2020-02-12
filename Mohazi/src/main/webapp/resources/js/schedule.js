/**
 * 
 */
console.log("Schedule Module........");
var scheduleService= (function(){
	
	function add(s_date, callback, error){
		console.log("add schedule...........");
		
		$.ajax({
			type : 'post', 
			url : '/schedules/new',
			data : JSON.stringify(s_date),
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
		
		var p_no = param.p_no;
		console.log(p_no);
		$.getJSON("/schedules/list/"+p_no+".json",
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
	
	function remove(s_no, callback, error){
		$.ajax({
			type : 'delete',
			url : '/schedules/' + s_no,
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
	
	function update(s_date, callback, error){
		
		$.ajax({
			type : 'put',
			url : '/schedules/' + schedule.s_no,
			data : JSON.stringify(s_date),
			contentType : "application/json; charset=utf-8",
			success : function(result, status, xhr){
				if(callback){
					callback(result);
				}
			},
			error : function(xhr, status,er){
				if(error){
					error(er);
				}
			}
		});
	}
	
	function get(s_no, callback, error){
		$.get("/schedules/" + s_no + ".json", function(result){
			if(callback){
				callback(result);
			}
		}).fail(function(xhr, status, err){
			if(error){
				error();
			}
		});
	}
	
	return {add: add,
			getList: getList,
			remove : remove,
			update : update,
			get : get
			};
	
})();