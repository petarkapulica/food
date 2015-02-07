<span class="register-title">HELLO, <?php echo  $_SESSION["user"]["name"] . " ! ";?></span>
<a href="logout" class="logout-button">Sign out</a>


<div class="chatBox">
    <div class="main">
                
    </div>
            
    <div class="messageBox">
        <form name="newMessage" class="newMessage" action="" onsubmit="return false" >
            <div class="left">
                <textarea  name="newMessageContent" id="newMessageContent">Enter your message here</textarea>
            </div>

            <div class="right">
                <input type="submit" id="newMessageSend" value="SEND" />
            </div>
           
           <div class="enter_check">
               <input type="checkbox" class="check_enter" checked>Allow enter 
           </div>
        </form>
    </div>
                 
        </div>