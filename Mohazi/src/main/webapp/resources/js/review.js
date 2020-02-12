console.log("Review Module......")

var reviewService = (function() {
	
	function add(review, callback, error) {
		
		console.log("review......");
		
		$.ajax({
			type: 'post',
			url: '/review/new',
			data: JSON.stringify(review),
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
		
		$.getJSON("/review/party/" + p_no + ".json",
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
	
	
	function get(r_no, callback, error) {
		
		$.get("/review/" + r_no + ".json", function(result) {
			
			if (callback) {
				callback(result);
			}
		}).fail(function(xhr, status, err) {
			if (error) {
				error();
			}
		});
	}
	
	
	function update(review, callback, error) {
		
		console.log("R_NO : " + review.r_no);
		
		$.ajax({
			type: 'put',
			url: '/review/' + review.r_no,
			data: JSON.stringify(review),
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
	
	
	function remove(r_no, callback, error) {
		
		$.ajax({
			type: 'delete',
			url: '/review/' + r_no,
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
		update : update,
		remove : remove,
		displayTime : displayTime
	};
})();