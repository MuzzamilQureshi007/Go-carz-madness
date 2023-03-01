package main

import (
	"net/http"

	admincontroller "github.com/MuzzamilQureshi007/go-main-project/controllers/Admin"
	"github.com/MuzzamilQureshi007/go-main-project/controllers/Admin/ManageOurPortfolioController"
	"github.com/MuzzamilQureshi007/go-main-project/controllers/Admin/ManageOurServiceController"
	"github.com/MuzzamilQureshi007/go-main-project/controllers/Admin/ManageOurTeamsController"
	"github.com/MuzzamilQureshi007/go-main-project/controllers/Admin/ManageOurTestimonialController"
	"github.com/MuzzamilQureshi007/go-main-project/controllers/Admin/ManageOurUsersController"
	homecontroller "github.com/MuzzamilQureshi007/go-main-project/controllers/Frontend/home"
)

func main() {
	http.HandleFunc("/", homecontroller.Index)
	http.HandleFunc("/contact-us", homecontroller.SendEmail)
	// http.HandleFunc("/blog-details", homecontroller.BlogDetail)
	http.HandleFunc("/admin", admincontroller.AdminLogin)
	http.HandleFunc("/register", admincontroller.Register)
	http.HandleFunc("/dashboard", admincontroller.Dashboard)

	http.HandleFunc("/users/logout", ManageOurUsersController.Logout)
	http.HandleFunc("/users", ManageOurUsersController.UserLogin)
	http.HandleFunc("/manage-users", ManageOurUsersController.Index)
	http.HandleFunc("/manage-users/store", ManageOurUsersController.Store)
	http.HandleFunc("/manage-users/get_form", ManageOurUsersController.GetForm)
	http.HandleFunc("/manage-users/delete", ManageOurUsersController.Delete)

	http.HandleFunc("/manage-teams", ManageOurTeamsController.Index)
	http.HandleFunc("/manage-teams/store", ManageOurTeamsController.Store)
	http.HandleFunc("/manage-teams/get_form", ManageOurTeamsController.GetForm)
	http.HandleFunc("/manage-teams/delete", ManageOurTeamsController.Delete)

	http.HandleFunc("/manage-service", ManageOurServiceController.Index)
	http.HandleFunc("/manage-service/store", ManageOurServiceController.Store)
	http.HandleFunc("/manage-service/get_form", ManageOurServiceController.GetForm)
	http.HandleFunc("/manage-service/delete", ManageOurServiceController.Delete)

	http.HandleFunc("/manage-portfolio", ManageOurPortfolioController.Index)
	http.HandleFunc("/manage-portfolio/store", ManageOurPortfolioController.Store)
	http.HandleFunc("/manage-portfolio/get_form", ManageOurPortfolioController.GetForm)
	http.HandleFunc("/manage-portfolio/delete", ManageOurPortfolioController.Delete)

	http.HandleFunc("/manage-testimonial", ManageOurTestimonialController.Index)
	http.HandleFunc("/manage-testimonial/store", ManageOurTestimonialController.Store)
	http.HandleFunc("/manage-testimonial/get_form", ManageOurTestimonialController.GetForm)
	http.HandleFunc("/manage-testimonial/delete", ManageOurTestimonialController.Delete)

	http.HandleFunc("/logout", admincontroller.Logout)
	http.Handle("/static/", http.StripPrefix("/static/", http.FileServer(http.Dir("static"))))
	http.ListenAndServe(":8000", nil)
}
