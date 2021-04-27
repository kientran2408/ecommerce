<h1 align="center">Change Password </h1>

<form action="" method="post" enctype="mutipart/form-data"> <!-- form Begin -->
	
	<div class="form-group"><!-- form-group begin -->
		
		<label> Your Old Password: </label>

		<input type="text" name="old_pass" class="form-control" required>

	</div><!-- form-group finish -->

	<div class="form-group"><!-- form-group begin -->
		
		<label> Your New Password: </label>

		<input type="text" name="new_pass" class="form-control" required>

	</div><!-- form-group finish -->

	<div class="form-group"><!-- form-group begin -->
		
		<label> Confirm Your New Password:</label>

		<input type="text" name="new_pass_again" class="form-control" required>

	</div><!-- form-group finish -->
	<div class="text-center"><!-- text-center Begin -->

		<button type="submit" name="submit" class="btn btn-primary">
			
			<i class="fa fa-user-md"></i> Submit

		</button><!-- btn btn-primary -->
		
	</div><!-- text-center Finish -->

</form> <!-- form Finish -->

<?php 

if(isset($_POST['submit'])){
    
    $c_username = $_SESSION['customer_username'];
    
    $c_old_pass = $_POST['old_pass'];
    
    $c_new_pass = $_POST['new_pass'];
    
    $c_new_pass_again = $_POST['new_pass_again'];
    
    $sel_c_old_pass = "select * from customers where customer_pass='$c_old_pass'";
    
    $run_c_old_pass = mysqli_query($con,$sel_c_old_pass);
    
    $check_c_old_pass = mysqli_fetch_array($run_c_old_pass);
    
    if($check_c_old_pass==0){
        
        echo "<script>alert('Sorry, your current password did not valid. Please try again')</script>";
        
        exit();
        
    }
    
    if($c_new_pass!=$c_new_pass_again){
        
        echo "<script>alert('Sorry, your new password did not match')</script>";
        
        exit();
        
    }
    
    $update_c_pass = "update customers set customer_pass='$c_new_pass' where customer_username='$c_username'";
    
    $run_c_pass = mysqli_query($con,$update_c_pass);
    
    if($run_c_pass){
        
        echo "<script>alert('Your password has been updated')</script>";
        
        echo "<script>window.open('my_account.php?my_orders','_self')</script>";
        
    }
    
}

?>