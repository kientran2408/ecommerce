<?php 

$customer_session = $_SESSION['customer_username'];

$get_customer = "select * from customers where customer_username='$customer_session'";

$run_customer = mysqli_query($con,$get_customer);

$row_customer = mysqli_fetch_array($run_customer);

$customer_id = $row_customer['customer_id'];

$customer_name = $row_customer['customer_name'];

$customer_city = $row_customer['customer_city'];

$customer_contact = $row_customer['customer_contact'];

?>

<h1 align="center"> Edit Your Account </h1>

<form action="" method="post" enctype="multipart/form-data"><!-- form Begin -->
    
    <div class="form-group"><!-- form-group Begin -->
        
        <label> Customer Name: </label>
        
        <input type="text" name="c_name" class="form-control" value="<?php echo $customer_name; ?>" required>
        
    </div><!-- form-group Finish -->
    
    <div class="form-group"><!-- form-group Begin -->
        
        <label> Customer City: </label>
        
        <input type="text" name="c_city" class="form-control" value="<?php echo $customer_city; ?>" required>
        
    </div><!-- form-group Finish -->
    
    <div class="form-group"><!-- form-group Begin -->
        
        <label> Customer Contact: </label>
        
        <input type="text" name="c_contact" class="form-control" value="<?php echo $customer_contact; ?>" required>
        
    </div><!-- form-group Finish -->
    
    <div class="text-center"><!-- text-center Begin -->
        
        <button name="update" class="btn btn-primary"><!-- btn btn-primary Begin -->
            
            <i class="fa fa-user-md"></i> Update Now
            
        </button><!-- btn btn-primary inish -->
        
    </div><!-- text-center Finish -->
    
</form><!-- form Finish -->

<?php 

if(isset($_POST['update'])){
    
    $update_id = $customer_id;
    
    $c_name = $_POST['c_name'];
    
    $c_city = $_POST['c_city'];
     
    $c_contact = $_POST['c_contact'];
    
    $update_customer = "update customers set customer_name='$c_name',customer_city='$c_city',customer_contact='$c_contact' where customer_id='$update_id' ";
    
    $run_customer = mysqli_query($con,$update_customer);
    
    if($run_customer){
        
        echo "<script>alert('Your account has been edited, to complete the process, please Relogin')</script>";
        
        echo "<script>window.open('logout.php','_self')</script>";
        
    }
    
}

?>