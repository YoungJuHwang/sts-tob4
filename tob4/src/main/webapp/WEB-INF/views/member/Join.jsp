<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>

 <div class= "로그인" >
   <div class = "container" style = "width : 55%; background-color: zoom: 1; filter: alpha(opacity=80); opacity: 0.8;">
  <div class = "jumbotron" style= "background-color: zoom: 1; filter: alpha(opacity=80); opacity: 0.8">
    <h1 ><span class ="label label-default"> 로그인</span></h1><br/>  
    <form class = "form-horizontal" role = "form">
    <div class = "form-group">
      <label class= "control-label col-sm-2" for="email" >아이디:</label>
      <div class= "col-sm-6" >
        <input type= "text" class = "form-control" id ="id" placeholder="아이디를 입력해주세요" >
      </div>
    </div >
    <div class = "form-group">
      <label class= "control-label col-sm-2" for="pwd" >비밀먼호:</label>
      <div class= "col-sm-6" >         
        <input type= "password" class = "form-control" id="password" placeholder = "비밀번호를 입력해주세요" >
      </div>
    </div >
    <div class = "form-group">      
      <div class= "col-sm-offset-2 col-sm-10" >
        <div class= "checkbox" >
          <label><input type ="checkbox"> 로그인 상태유지</label >
        </div>
      </div>
    </div >
    <div class ="container" >
            <label class= "control-label col-sm-7" for="text" >
       <button type= "button" class = "btn btn-default" ><h4><strong>로그인 </strong></h4></button>   
       </label>
     </div >
  </form >
</div>
  </div >    
</div>
 
 <div class = "회원가입" >
   <div class = "container" style = "width : 55%; background-color: zoom: 1; filter: alpha(opacity=80); opacity: 0.8;" >
  <div class = "jumbotron" style="background-color: zoom: 1; filter: alpha(opacity=80); opacity: 0.8;">
    <h1 ><span class ="label label-default"> 회원가입</span></h1><br/>  
    <form class = "form-horizontal" role = "form">
    <div class = "form-group">
      <label class= "control-label col-sm-2" for="email" >아이디:</label>
      <div class= "col-sm-6" >
        <input type= "text" class = "form-control" id ="id" placeholder="아이디를 입력해주세요" >
      </div>
    </div >
    <div class = "form-group">
      <label class= "control-label col-sm-2" for="pwd" >비밀먼호:</label>
      <div class= "col-sm-6" >         
        <input type= "password" class = "form-control" id="password" placeholder = "비밀번호를 입력해주세요" >
      </div>
    </div >
    <div class = "form-group">
      <label class= "control-label col-sm-2" for="pwd" > 비밀번호 확인:</label >
      <div class= "col-sm-6" >         
        <input type= "password" class = "form-control" id="password" placeholder = "비밀번호를 재입력해주세요" >
      </div>
    </div >
    <div class = "form-group">
      <label class= "control-label col-sm-2" for="text" >이름:</label>
      <div class= "col-sm-6" >         
        <input type= "text" class = "form-control" id ="name" placeholder="이름을 입력해주세요" >
      </div>
    </div >
    <div class = "form-group">
      <label class= "control-label col-sm-2" for="text" >생년월일:</label>
      <div class= "col-sm-6" >         
        <input type= "text" class = "form-control" id="birth" placeholder= "생년월일을 입력해주세요" >
      </div>
    </div >
    <div class = "form-group">
      <label class= "control-label col-sm-2" for="text" >성별:</label>
      <div class= "col-sm-6" >         
        <label class= "radio-inline" >
      <input type= "radio" name = "optradio">남
      </label>
    <label class = "radio-inline">
      <input type= "radio" name = "optradio">여
      </label>
      </div>
    </div >
    <div class = "form-group">
      <label class= "control-label col-sm-2" for="text" >이메일:</label>
      <div class= "col-sm-6" >         
        <input type= "text" class = "form-control" id="email" placeholder= "이메일을 입력해주세요" >
      </div>
    </div >
    <div class = "form-group">
      <label class= "control-label col-sm-2" for="text" >전화번호:</label>
      <div class= "col-sm-6" >         
        <input type= "text" class = "form-control" id="phone" placeholder= "전화번호를 입력해주세요" >
      </div>
    </div >
    <div class = "form-group">
      <label class= "control-label col-sm-2" for="text" >주소:</label>
      <div class= "col-sm-6" >         
        <input type= "text" class = "form-control" id ="addr" placeholder="주소를 입력해주세요" >
      </div>
    </div >
      <div class= "container" >
            <label class= "control-label col-sm-7" for="text" >
       <button type= "button" class = "btn btn-default" ><h4><strong>회원가입완료 </strong></h4></button>  
       <button type= "button" class = "btn btn-default" ><h4><strong>회원가입취소 </strong></h4></button>
       </label>
     </div >
  </form >
</div>
  </div >    
</div>

 <div class = "회원정보수정" >
   <div class = "container" style = "width : 55%; background-color: zoom: 1; filter: alpha(opacity=80); opacity: 0.8;">
  <div class = "jumbotron" style="background-color: zoom: 1; filter: alpha(opacity=80); opacity: 0.8;">
    <h1 ><span class ="label label-default"> 회원정보수정</span></h1><br/>  
    <form class = "form-horizontal" role = "form">
    <div class = "form-group">
      <label class= "control-label col-sm-2" for="email" >아이디:</label>
      <div class= "col-sm-6" >
        <input type= "text" class = "form-control" id ="id" placeholder="아이디를 입력해주세요" >
      </div>
    </div >
    <div class = "form-group">
      <label class= "control-label col-sm-2" for="pwd" >비밀먼호:</label>
      <div class= "col-sm-6" >         
        <input type= "password" class = "form-control" id="password" placeholder = "비밀번호를 입력해주세요" >
      </div>
    </div >
    <div class = "form-group">
      <label class= "control-label col-sm-2" for="pwd" > 비밀번호 확인:</label >
      <div class= "col-sm-6" >         
        <input type= "password" class = "form-control" id="password" placeholder = "비밀번호를 재입력해주세요" >
      </div>
    </div >
    <div class = "form-group">
      <label class= "control-label col-sm-2" for="text" >이름:</label>
      <div class= "col-sm-6" >         
        <input type= "text" class = "form-control" id ="name" placeholder="이름을 입력해주세요" >
      </div>
    </div >
    <div class = "form-group">
      <label class= "control-label col-sm-2" for="text" >생년월일:</label>
      <div class= "col-sm-6" >         
        <input type= "text" class = "form-control" id="birth" placeholder= "생년월일을 입력해주세요" >
      </div>
    </div >
    <div class = "form-group">
      <label class= "control-label col-sm-2" for="text" >성별:</label>
      <div class= "col-sm-6" >         
        <label class= "radio-inline" >
      <input type= "radio" name = "optradio">남
      </label>
    <label class = "radio-inline">
      <input type= "radio" name = "optradio">여
      </label>
      </div>
    </div >
    <div class = "form-group">
      <label class= "control-label col-sm-2" for="text" >이메일:</label>
      <div class= "col-sm-6" >         
        <input type= "text" class = "form-control" id="email" placeholder= "이메일을 입력해주세요" >
      </div>
    </div >
    <div class = "form-group">
      <label class= "control-label col-sm-2" for="text" >전화번호:</label>
      <div class= "col-sm-6" >         
        <input type= "text" class = "form-control" id="phone" placeholder= "전화번호를 입력해주세요" >
      </div>
    </div >
    <div class = "form-group">
      <label class= "control-label col-sm-2" for="text" >주소:</label>
      <div class= "col-sm-6" >         
        <input type= "text" class = "form-control" id ="addr" placeholder="주소를 입력해주세요" >
      </div>
    </div >
      <div class= "container" >
            <label class= "control-label col-sm-7" for="text" >
       <button type= "button" class = "btn btn-default" ><h4><strong>정보수정완료 </strong></h4></button>  
       <button type= "button" class = "btn btn-default" ><h4><strong>정보수정취소 </strong></h4></button>
       </label>
     </div >
  </form >
</div>
  </div >    
</div>
 