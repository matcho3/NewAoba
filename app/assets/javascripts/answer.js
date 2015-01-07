

$(function() {
	$('#btn').click(function(event) {

		console.log(1);
	 	// 全てのフォームを持って来る
	 	var form = $('form');

		var val = $('form :checked').val();
        console.log(val);
        var isAllFilled = true;
	 	for(var i=0; i<form.length; i++)　{
	 		var $form = form.eq(i);
			console.log($form.serialize());

			if() {//　もし入っていなかったら
	 			isAllFilled = false;
	 			// TODO: バリーションメッセージを表示する
	 			$('.error-message').html('入力されてないよ');
	 		}
		}
		if(isAllFilled == true) { // 全部のフォームが入力されていたら
			for(var i=0; i<form.length; i++) {
				var $form = form.eq(i);
				$.ajax({
			 		url: $form.attr('action'),
			 		type: $form.attr('method'),
			 		data: $form.serialize(),
		            // timeout: 10000,
		            // dataType: 'text'
		        })
			 	.success(function( data ) {
		            // 通信が成功したときの処理
		            console.log('success');

		            location.href = '/ope';
		        })
			 	.error(function( data ) {
		            // 通信が失敗したときの処理
		            console.log('error');
		        });
		    }
	    } else {
	    	#('.error-message').show();
	    }
	 });
});

		

// 最終的に、answer controller 送って保存させる。
// answer の、answer actionに行くように保存させる

// form を Ajax で送信してDB に送信させる方法を考える

// console.log($(this).prop('action'));