<title>WhiteAvocado-Drive</title>
<link rel="icon"  href="favicon/White-Avocado.ico"/>
<style>
body {
  background-color: black;
}
</style>

<?php
   if(isset($_FILES['image'])){
      $errors= array();
      $file_name = $_FILES['image']['name'];
      $file_size =$_FILES['image']['size'];
      $file_tmp =$_FILES['image']['tmp_name'];
      $file_type=$_FILES['image']['type'];
      
      
      if($file_size > 20000000){
         $errors[]='Maby to big(thats what she said!)';
      }
      
      if(empty($errors)==true){
         move_uploaded_file($file_tmp,"Download_Folder/".$file_name);
         echo "<font color='white'>Uploaded file: ".$file_name." successful!</font>";
      }else{
         echo "<font color='red'>Error by uploading: ".$file_name." Maby to big(thats what she said!)</font>";
      }
   }
?>
<html>
   <body>
      
      <form action="" method="POST" enctype="multipart/form-data">
         <input type="file" name="image" />
         <input type="submit"/>
      </form>
      
   </body>
</html>
<h1></h1>
<?php
{
echo "<font color='lightgreen'>URL to Drive files:</font>";
}
?>
<h1></h1>
<?php
$fileList = glob('Download_Folder/*');
foreach($fileList as $filename){
   echo "<font color='red'>http://whiteavocado.ddns.net/IIIIIIIIIIIIIIIIIIIIIII/".$filename."</font>", '<br>'; 
}