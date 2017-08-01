/**
 * Created by Administrator on 2017/7/27.
 */

$("#upload1").click(function () {
    var form = new FormData($('#pic1')[0]);
    form.append("file1",$("#file1").val());
    console.log("before ajax");
    $.ajax({
        url: "/dituUrl",
        type: "post",
        data: form,
        processData: false,
        contentType: false,
        success:function(data){
            console.log("success")
        },
        error:function(){
            alert("error!")
        }
    });
});


$("#next2").click(function () {
    console.log("x_1:"+$("#dataX").val())
    console.log("y_1:"+$("#dataY").val())
    console.log("width_1:"+$("#dataWidth").val())
    console.log("height_1:"+$("#dataHeight").val())
    $("#step2").hide()
    $("#step3").show()
    $("#submit").show()
    $("#next2").hide()

    var aaa = document.getElementById("rrr"); //获取显示图片的div元素
    var input = document.getElementById("file2"); //获取选择图片的input元素

    //这边是判断本浏览器是否支持这个API。
    if (typeof FileReader === 'undefined') {
        aaa.innerHTML = "抱歉，你的浏览器不支持 FileReader";
        input.setAttribute('disabled', 'disabled');
    } else {
        //如果支持就监听改变事件，一旦改变了就运行readFile函数。
        input.addEventListener('change', readFile, false);
    }


    function readFile() {
        var file = this.files[0]; //获取file对象
        //判断file的类型是不是图片类型。
        if (!/image\/\w+/.test(file.type)) {
            alert("文件必须为图片！");
            return false;
        }

        var reader = new FileReader(); //声明一个FileReader实例
        reader.readAsDataURL(file); //调用readAsDataURL方法来读取选中的图像文件
        //最后在onload事件中，获取到成功读取的文件内容，并以插入一个img节点的方式显示选中的图片
        reader.onload = function (e) {
            aaa.innerHTML =
                '<img src="' + this.result + '" alt=""' +
                '+ style="width: 640px;height: 900px" id = "myimg"/>'
        }
    }
})