<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app="myApp">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<script type="text/javascript" src="scripts/user/angular.js"></script>
<script type="text/javascript" src="scripts/user/angular-route.js"></script>
</head>
<body>
<div>
    <p>Welcome {{username}}</p>
    <p>password {{password}}</p>
    <a href="/spring-mvc6/index.jsp">Log out</a>
</div>

<form class="form-horizontal" ng-submit="submitStudnetForm()" role="form">
    <div class="form-group">
        <label for="firstName" class="col-sm-3 control-label">First Name</label>
        <div class="col-sm-6">
            <input type="text" class="form-control" ng-model="student.firstName" />
        </div>
        <div class="col-sm-3"></div>

    </div>
    <div class="form-group">
        <label for="lastName" class="col-sm-3 control-label">Last Name</label>
        <div class="col-sm-6">
            <input type="text"  class="form-control" ng-model="student.lastName" />
        </div>
        <div class="col-sm-3"></div>
    </div>
        
    <div class="form-group">
        <label for="dob" class="col-sm-3 control-label">DoB</label>
        <div class="col-sm-2">
            <input type="date"  class="form-control" ng-model="student.DoB" value=""/>
        </div>
        <div class="col-sm-7"></div>
    </div>
        
    <div class="form-group">
        <label for="gender" class="col-sm-3 control-label">Gender</label>
        <div class="col-sm-2">
            <select id="gender" class="form-control" ng-model="student.gender">
                <option value="male">Male</option>
                <option value="female">Female</option>
            </select>
        </div>
        <div class="col-sm-7"></div>
    </div>
        
    <div class="form-group">
        <div class="col-sm-3"></div>
        <div class="col-sm-2">
            <span><b>Training Location</b></span>
            <div class="radio">
                <label><input value="online" type="radio" name="training" ng-model="student.trainingType" />Online</label>
            </div>
            <div class="radio">
                <label><input value="onsite" type="radio" name="training" ng-model="student.trainingType" />OnSite</label>
            </div>
        </div>
        <div class="col-sm-7">
            <span><b>Main Subjects</b></span>
            <div class="checkbox">
                <label><input type="checkbox" ng-model="student.maths" />Maths</label>
            </div>
            <div class="checkbox">
                <label><input type="checkbox" ng-model="student.physics" />Physics</label>
            </div>
            <div class="checkbox">
                <label><input type="checkbox"  ng-model="student.chemistry" />Chemistry</label>
            </div>
        </div>
    </div>

    <input type="submit" value="Save" class="btn btn-primary col-sm-offset-3" />
    <input type="reset" value="Reset" ng-click="resetForm()" />
</form>



</body>
</html>