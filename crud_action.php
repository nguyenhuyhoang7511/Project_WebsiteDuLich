<?php
require_once("DBController.php");
$db_handle = new DBController();

$action = $_POST["action"];
if(!empty($action)) {
	switch($action) {
		case "add":
			// echo $_POST["USname"];
		    $query = "INSERT INTO db_comment(message) VALUES('".$_POST["txtmessage"]."')";
		    $insert_id = $db_handle->insert($query);
			$d = date('Y-m-d H:i:s'); // Tạo ra 1 biến lưu thời gian
		    if($insert_id){
				  echo '<div class="message-box"  id="message_' . $insert_id . '">
						<div>
						</div>						
						<div class="main_info_tour_comment_user message-box" id="message_<?php echo $comments[$k]["id"]; ?>
						<div class="comment_user_avatar">
						<img width="40" height="40" class="rounded-circle" src="img/userphp.png" alt="">
						</div>
						<div class="comment_user_content">
							<div class="content_text">
								<b>
								Nguyễn Huy Hoàng
								</b>
								<p><div class="message-content">' . $_POST["txtmessage"] . '</div></p>
							</div>
							<div class="btn_show_option">                                           
								<button style="border: none; background-color: unset; " class=" fw-bold btnEditAction text-secondary  btn-sm" class="btnEditAction" name="edit" onClick="showEditBox(this,' . $insert_id . ')">Sửa</button>
								<button style="border: none; background-color: unset; " class=" fw-bold btnDeleteAction  text-secondary  btn-sm" class="btnDeleteAction" name="delete" onClick="callCrudAction(\'delete\',' . $insert_id . ')">Xóa</button>
								<button style="border: none; background-color: unset; " class=" fw-bold btnDeleteAction  text-secondary  btn-sm" >Haha</button>                                            
								<span class="text-secondary">Thời gian : Vừa xong</span>
							</div>						   
						</div>
					</div>												
					';
			}
			break;
			
		case "edit":
		    $query = "UPDATE db_comment set message = '".$_POST["txtmessage"]."' WHERE  id=".$_POST["message_id"];
		    $result = $db_handle->execute($query);
			if($result){
				  echo $_POST["txtmessage"];
			}
			break;			
		
		case "delete": 
		    if(!empty($_POST["message_id"])) {
		        $query = "DELETE FROM db_comment WHERE id=".$_POST["message_id"];
		        $result = $db_handle->execute($query);
			}
			break;
	}
}
?>
