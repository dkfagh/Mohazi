console.log("QNA Module......")

var qnaService = (function() {
	
	function add(qna, callback, error) {
		
		console.log("review......");
		
		$.ajax({
			type: 'post',
			url: '/QNA/new',
			data: JSON.stringify(qna),
			contentType: 'application/json; charset=utf-8',
			success: function(result, status, xhr) {
				if (callback) {
					callback(result);
				}
			},
			error: function(xhr, status, er) {
				if (error) {
					error(er);
				}
			}
		})
	}
	
	
	function getList(param, callback, error) {
		
		var p_no = param.p_no;
		console.log(p_no);
		
		$.getJSON("/QNA/party/" + p_no + ".json",
				function(data) {
					if (callback) {
						callback(data);
					}
				}).fail(function(xhr, status, err) {
					if (error) {
						error();
					}
				});
	}
	
	
	function get(q_no, callback, error) {
		
		$.get("/QNA/" + q_no + ".json", function(result) {
			
			if (callback) {
				callback(result);
			}
		}).fail(function(xhr, status, err) {
			if (error) {
				error();
			}
		});
	}
	
		
	
	function modifyAnswer(qna, callback, error) {
		
		console.log("Q_NO : " + qna.q_no);
		
		$.ajax({
			type: 'put',
			url: '/QNA/' + qna.q_no,
			data: JSON.stringify(qna),
			contentType: 'application/json; charset=utf-8',
			success: function(result, status, xhr) {
				if (callback) {
					callback(result);
				}
			},
			error: function(xhr, status, er) {
				if (error) {
					error(er);
				}
			}
		});
	}

	
	function remove(q_no, callback, error) {
		
		$.ajax({
			type: 'delete',
			url: '/QNA/' + q_no,
			success: function(deleteResult, status, xhr) {
				if (callback) {
					callback(deleteResult);
				}
			},
			error: function(xhr, status, er) {
				if (error) {
					error(er);
				}
			}
		});
	}
	
	
	function displayTime(timeValue) {
		
		var today = new Date();
		
		var gap = today.getTime() - timeValue;
		
		var dateObj = new Date(timeValue);
		var str = "";
		
		var yyyy = dateObj.getFullYear();
		var mm = dateObj.getMonth() + 1;
		var dd = dateObj.getDate();
		
		return [ yyyy, "/", (mm > 9 ? "" : "0") + mm, "/", (dd > 9 ? "" : "0") + dd].join("");
	}
	
	
	return {
		add : add,
		getList : getList,
		get : get,
		modifyAnswer : modifyAnswer,
		remove : remove,
		displayTime : displayTime
	};
})();