import Vapor

func routes(_ app: Application) throws {
    app.get { req in
        return "This is GShop API server!"
    }
    
    let authController = AuthController()
    app.group("auth") { auth in
        auth.post("register", use: authController .register)
        auth.post("login", use: authController .login)
        auth.post("logout", use: authController .logout)
        auth.put("update_user", use: authController .updateUser)
    }
    
    

}
