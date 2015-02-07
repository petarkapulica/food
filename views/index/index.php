    <div id="A">
            <h1 class="register-title">Welcome</h1>
                <form id="form_register" class="register" action="registration" method="post">

                  <input type="text" name="name" class="register-input" placeholder="Your Name">

                  <input type="text" name="surname" class="register-input" placeholder="Your Surname">

                  <input type="email" name="email" class="register-input" placeholder="Email address">

                  <input type="text" name="newusername" class="register-input" placeholder="Username">

                  <input type="password" name="newpassword" class="register-input" placeholder="Password">
                  
                  <br>
                  <textarea class="tandc" name="tandc" form="form_register" disabled="true"> Foodygram has provided the materials contained in this web site for informational purposes only. 
                                                                By accessing and using this site, or by downloading any materials contained herein, you agree to be subject to the following Terms and Conditions. 
                                                                Foodygram makes every effort to keep all information provided on this site accurate and up to date, but makes no warranties or representations regarding the information. 
                                                                Users agree that all access and use of this site, and externally linked pages, are at the user’s own risk. 
                                                                Foodygram is providing this site and its contents on an “as is” basis, and makes no representations or warranties of any kind with respect to this site or its contents. 
                                                                Foodygram expressly disclaims all such representations and warranties, including for example warranties of merchantability and fitness for a particular purpose. 
                                                                In addition, Foodygram does not represent or warrant that the information accessible via this site is accurate, complete, or current. 
                                                                Price and availability information is subject to change without notice. 
                                                                Foodygram reserves the right in its sole discretion to refuse service, to terminate accounts and/or cancel any orders if it believes your use of this web site violates the policies for use, violates the law or is harmful to the interests of Foodygram. 
                                                                Foodygram does not accept unsolicited advertisements or marketing proposals of any kind to any published phone/fax numbers or email addresses.
                                                                Please send questions or comments about the Foodygram web site to: epkapuleti@gmail.com.
                                                                
                 </textarea>
                  <br>
                  <input type="checkbox" name="agree" disabled="true" />I agree

                  <input type="submit" value="Create Account" class="register-button" />
                  
                </form>
    </div>

    <div id="B">
            <h1 class="register-title">Already have account?</h1>
                <form id="form_login" class="register" action="login" method="post">
                    
                  <input type="text" name="logusername" class="register-input" placeholder="Username">
                  
                  <input type="password" name="logpassword" class="register-input" placeholder="Password">
                  
                  <input type="submit" value="Login" class="register-button">
                  
                </form>
    </div>

