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
    
    let productsController = ProductsController()
    app.group("products") { products in
        products.get(use: productsController.index)
        products.get(":id", use: productsController.show)
    }
    
    let reviewsController = ReviewsController()
    app.group("reviews") { reviews in
        reviews.get(use: reviewsController.index)
        reviews.post(use: reviewsController.create)
        reviews.delete(":id", use: reviewsController.delete)
    }
    
    let cartItemsController = CartItemsController()
    app.group("cartItems") { route in
        route.post(use: cartItemsController.create)
        route.delete(use: cartItemsController.delete)
    }
    
    let cartsController = CartsController()
    app.group("carts") { route in
        route.group(":id"){ subroute in
            subroute.post("checkout",use: cartsController.checkout)
        }
    }

}
