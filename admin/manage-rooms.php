<?php
    session_start();
    include('../includes/dbconn.php');
    include('../includes/check-login.php');
    check_login();

?>
 <?php
    if(isset($_POST["room-form"])){
        echo "submitted";
        if(isset($_POST['btn1']))
        {
            echo $_POST;
            echo $_POST['roomNo'];
        }
    }                      
?>

<!DOCTYPE html>
<html dir="ltr" lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- Favicon icon -->
    <link rel="icon" type="image/png" sizes="16x16" href="../assets/images/favicon.png">
    <title>Hostel Management System</title>
    <!-- Custom CSS -->
    <link href="../assets/extra-libs/c3/c3.min.css" rel="stylesheet">
    <link href="../assets/libs/chartist/dist/chartist.min.css" rel="stylesheet">
    <link href="../assets/extra-libs/datatables.net-bs4/css/dataTables.bootstrap4.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="../dist/css/style.min.css" rel="stylesheet">
    
</head>

<body>
    <!-- ============================================================== -->
    <!-- Preloader - style you can find in spinners.css -->
    <!-- ============================================================== -->
    <div class="preloader">
        <div class="lds-ripple">
            <div class="lds-pos"></div>
            <div class="lds-pos"></div>
        </div>
    </div>
    <!-- ============================================================== -->
    <!-- Main wrapper - style you can find in pages.scss -->
    <!-- ============================================================== -->
    <div id="main-wrapper" data-theme="light" data-layout="vertical" data-navbarbg="skin6" data-sidebartype="full"
        data-sidebar-position="fixed" data-header-position="fixed" data-boxed-layout="full">
        <!-- ============================================================== -->
        <!-- Topbar header - style you can find in pages.scss -->
        <!-- ============================================================== -->
        <header class="topbar" data-navbarbg="skin6">
            <?php include 'includes/navigation.php'?>
        </header>
        <!-- ============================================================== -->
        <!-- End Topbar header -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- Left Sidebar - style you can find in sidebar.scss  -->
        <!-- ============================================================== -->
        <aside class="left-sidebar" data-sidebarbg="skin6">
            <!-- Sidebar scroll-->
            <div class="scroll-sidebar" data-sidebarbg="skin6">
                <?php include 'includes/sidebar.php'?>
            </div>
            <!-- End Sidebar scroll-->
        </aside>
        <!-- ============================================================== -->
        <!-- End Left Sidebar - style you can find in sidebar.scss  -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- Page wrapper  -->
        <!-- ============================================================== -->
        <div class="page-wrapper">
            <!-- ============================================================== -->
            <!-- Bread crumb and right sidebar toggle -->
            <!-- ============================================================== -->
           
                <!-- *************************************************************** -->
                <!-- End First Cards -->
                <!-- *************************************************************** -->


                <div class="col-12">
                        <div class="card">
                            
                            <div class="card-body">
                            
                            <div class="table-responsive">
                            <table id="zero_config" class="table table-striped table-bordered no-wrap">
                                    <thead>
                                        <tr>
                                            <th scope="col">#</th>
                                            <!-- <th scope="col">User ID</th> -->
                                            <th scope="col">Student's Email</th>
                                            
                                            <th scope="col">First Name</th>
                                            <th scope="col">Last Name</th>
                                        
                                            <th scope="col">Marks</th>
                                            <th scope="col">Contact</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    <?php	
                                        $seate=0;

                                        $aid=$_SESSION['id'];
                                        $ret="SELECT * from userregistration ORDER BY marks DESC LIMIT 10";
                                        $sql_merit="SELECT * from merit WHERE roomNo > 0";
                                        $merit_tb=mysqli_query($conn, $sql_merit);

                                        $sql_ins = "INSERT INTO `merit` (`id`, `name`,`email`,`marks`) VALUES (?,?,?,?)";
                                        
                                        $stmt= $mysqli->prepare($ret) ;
                                        $stmt->execute();
                                        $res=$stmt->get_result();
                                        $cnt=1;
                                        $isAlloted = false;
                                        while($row=$res->fetch_object()) {
                                            $stmt_ins= $mysqli->prepare($sql_ins);
                                            $id = $row->id;
                                            $name = $row->email;
                                            $email = $row->firstName;
                                            $marks = $row->marks;
                                            // echo "$name $email $marks";
                                            $stmt_ins->bind_param("issi", $id, $name, $email, $marks);
                                            $result = $stmt_ins->execute();
                                                ?>
                                        <tr><td><?php echo $cnt;?></td>
                                         <td><?php echo $row->email;?></td>
                                        <td><?php echo $row->firstName;?></td>
                                        <td><?php echo $row->lastName;?></td>
                                        
                                        <td><?php echo $row->marks;?></td>
                                        <td><?php echo $row->contactNo;?></td>
                                        <form action="allocate.php" method="post" name="room-form">

                                        <td><input type="number" max="120" min="101" value=""  name="roomNo"/></td>
                                        <td><input type="submit" value="allocate"  name="btn1"/></td>
                                        <?php $isAlloted = false; ?>
                                        <input type="hidden" name="student-id" value="<?= $row->id?>"/>
                                        </form>

                                            </tr>
                                            
                                            <?php
                                        $cnt=$cnt+1;
                                            } ?>
											
                                            
                                        </tbody>
                                    </table>
                                </div>
                           


                            </div>
                        
                        </div>
                    </div>
                
               
            </div>
            <!-- ============================================================== -->
            <!-- End Container fluid  -->
            <!-- ============================================================== -->
            <!-- ============================================================== -->
            <!-- footer -->
            <!-- ============================================================== -->
            <?php include '../includes/footer.php' ?>
            <!-- ============================================================== -->
            <!-- End footer -->
            <!-- ============================================================== -->
        </div>
        <!-- ============================================================== -->
        <!-- End Page wrapper  -->
        <!-- ============================================================== -->
    </div>
    <!-- ============================================================== -->
    <!-- End Wrapper -->
    <!-- ============================================================== -->
    <!-- End Wrapper -->
    <!-- ============================================================== -->
    <!-- All Jquery -->
    <!-- ============================================================== -->
    <script src="../assets/libs/jquery/dist/jquery.min.js"></script>
    <script src="../assets/libs/popper.js/dist/umd/popper.min.js"></script>
    <script src="../assets/libs/bootstrap/dist/js/bootstrap.min.js"></script>
    <!-- apps -->
    <!-- apps -->
    <script src="../dist/js/app-style-switcher.js"></script>
    <script src="../dist/js/feather.min.js"></script>
    <script src="../assets/libs/perfect-scrollbar/dist/perfect-scrollbar.jquery.min.js"></script>
    <script src="../dist/js/sidebarmenu.js"></script>
    <!--Custom JavaScript -->
    <script src="../dist/js/custom.min.js"></script>
    <!--This page JavaScript -->
    <script src="../assets/extra-libs/c3/d3.min.js"></script>
    <script src="../assets/extra-libs/c3/c3.min.js"></script>
    <script src="../assets/libs/chartist/dist/chartist.min.js"></script>
    <script src="../assets/libs/chartist-plugin-tooltips/dist/chartist-plugin-tooltip.min.js"></script>
    <script src="../dist/js/pages/dashboards/dashboard1.min.js"></script>
    <script src="../assets/extra-libs/datatables.net/js/jquery.dataTables.min.js"></script>
    <script src="../dist/js/pages/datatable/datatable-basic.init.js"></script>
</body>

</html> 