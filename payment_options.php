<div class="box"><!-- box Begin -->
   
   <?php 
    
    $session_username = $_SESSION['customer_username'];
    
    $select_customer = "select * from customers where customer_username='$session_username'";
    
    $run_customer = mysqli_query($con,$select_customer);
    
    $row_customer = mysqli_fetch_array($run_customer);
    
    $customer_id = $row_customer['customer_id'];
    
    ?>
    
    <h1 class="text-center">Payment For You</h1>  
    
     <p class="lead text-center"><!-- lead text-center Begin -->
         
         <button onclick="payment()"> Payment </button>

         <script type="text/javascript">function payment(){ alert("Waiting for payment")}</script>
         
     </p><!-- lead text-center Finish -->
    
</div><!-- box Finish -->