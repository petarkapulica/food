<?php

class UserChatsModel extends Model {
    
    public function saveChatMessages($data)
    {  
        $message = $data['message'];
        $time = time();
        
            $sql = "INSERT 
                     INTO 
                        chat 
                        (user_id,
                        message,
                        time)
                    VALUES
                        (:user_id,
                         :message,
                         :time
                        )" 
                    or die(mysql_error($this->db));
            
              $stmt = $this->db->prepare($sql);
              $stmt->bindParam(':user_id', $_SESSION["user"]["id"]);
              $stmt->bindParam(':message', $message);
              $stmt->bindParam(':time', $time);
              $stmt->execute();
        
    }
    
    public function getChatMessages()
    {   
        $fiveMinutesAgo = time() - 600;
        
        $sql = "SELECT 
                    ch.*,
                    u.username
                 FROM 
                    chat as ch
              LEFT JOIN
                    users as u
              ON
              ch.user_id=u.id
              WHERE 
                    ch.time > {$fiveMinutesAgo}
              ORDER BY
                    ch.time
                    " 
        //  (WHERE
        //      ch.user_id = :user_id)
                
            or die(mysql_error($this->db));
            
        $stmt = $this->db->prepare($sql);
        $stmt->bindParam(':user_id', $_SESSION["user"]["id"]);
        $stmt->execute();
        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }
    
    public function getChatMessagesFromSingleUser()
    {
        $tenSecondsAgo = time() - 10;
        
        $sql = "SELECT 
                    ch.*,
                    u.username
                 FROM 
                    chat as ch
              LEFT JOIN
                    users as u
              ON
              ch.user_id=u.id
              WHERE 
                    ch.time > {$tenSecondsAgo}
              AND
                    ch.user_id = :user_id
              ORDER BY
                    ch.time"
                    
                
            or die(mysql_error($this->db));
            
        $stmt = $this->db->prepare($sql);
        $stmt->bindParam(':user_id', $_SESSION["user"]["id"]);
        $stmt->execute();
        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }

}