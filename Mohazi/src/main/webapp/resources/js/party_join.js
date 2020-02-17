/**
 * 
 */
console.log("Party_join Module........");
var party_joinService= (function(){
	
	function add(party_join, callback, error){
		console.log("add party_join...........");
		
		$.ajax({
			type : 'post', 
			url : '/partys_join/new',
			data : JSON.stringify(party_join),
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
		$.getJSON("/partys_join/list/"+p_no+".json",
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
	
	function remove(pj_no, callback, error){
		$.ajax({
			type : 'delete',
			url : '/partys_join/' + pj_no,
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
		
	
	function get(pj_no, callback, error){
		$.get("/partys_join/" + pj_no + ".json", function(result){
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
			get : get
			};
	
})();