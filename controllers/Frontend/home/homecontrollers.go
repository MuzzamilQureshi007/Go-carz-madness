package controllers

import (
	"bytes"
	"html/template"
	"net/http"
	"net/smtp"

	"github.com/MuzzamilQureshi007/go-main-project/entities"
	"github.com/MuzzamilQureshi007/go-main-project/models"
)

type EmailForm struct {
	To      string
	Subject string
	Message string
}

var teamsModel = models.NewTeams()
var portfolioModel = models.NewPortfolio()
var serviceModel = models.NewService()
var testimonialModel = models.NewTestimonial()

func Index(w http.ResponseWriter, r *http.Request) {

	data := map[string]interface{}{
		"teams":       template.HTML(GetTeamsData()),
		"portfolio":   template.HTML(GetPortfolioData()),
		"service":     template.HTML(GetServiceData()),
		"testimonial": template.HTML(GetTestimonialData()),
	}

	temp, _ := template.ParseFiles("views/frontend/index.html", "views/frontend/headerfooter.html")
	temp.Execute(w, data)
}

func GetTeamsData() string {
	buffer := &bytes.Buffer{}
	temp, _ := template.New("index.html").Funcs(template.FuncMap{
		"increment": func(a, b int) int {
			return a + b
		},
	}).ParseFiles("views/frontend/TeamsSection/index.html")
	var teams []entities.Teams
	err := teamsModel.FindAll(&teams)
	if err != nil {
		panic(err)
	}
	data := map[string]interface{}{
		"teams": teams,
	}
	temp.ExecuteTemplate(buffer, "index.html", data)
	return buffer.String()
}
func GetPortfolioData() string {
	buffer := &bytes.Buffer{}
	temp, _ := template.New("index.html").Funcs(template.FuncMap{
		"increment": func(a, b int) int {
			return a + b
		},
	}).ParseFiles("views/frontend/OurPortfolio/index.html")
	var portfolio []entities.Portfolio
	err := portfolioModel.FindAll(&portfolio)
	if err != nil {
		panic(err)
	}
	data := map[string]interface{}{
		"portfolio": portfolio,
	}
	temp.ExecuteTemplate(buffer, "index.html", data)
	return buffer.String()
}
func GetServiceData() string {
	buffer := &bytes.Buffer{}
	temp, _ := template.New("index.html").Funcs(template.FuncMap{
		"increment": func(a, b int) int {
			return a + b
		},
	}).ParseFiles("views/frontend/OurService/index.html")
	var service []entities.Service
	err := serviceModel.FindAll(&service)
	if err != nil {
		panic(err)
	}
	data := map[string]interface{}{
		"service": service,
	}
	temp.ExecuteTemplate(buffer, "index.html", data)
	return buffer.String()
}
func GetTestimonialData() string {
	buffer := &bytes.Buffer{}
	temp, _ := template.New("index.html").Funcs(template.FuncMap{
		"increment": func(a, b int) int {
			return a + b
		},
	}).ParseFiles("views/frontend/OurTestimonial/index.html")
	var testimonial []entities.Testimonial
	err := testimonialModel.FindAll(&testimonial)
	if err != nil {
		panic(err)
	}
	data := map[string]interface{}{
		"testimonial": testimonial,
	}
	temp.ExecuteTemplate(buffer, "index.html", data)
	return buffer.String()
}

func SendEmail(w http.ResponseWriter, r *http.Request) {

	// Parse the form data.
	r.ParseForm()

	// Get the email form data.
	form := EmailForm{
		To:      r.FormValue("to"),
		Subject: r.FormValue("subject"),
		Message: r.FormValue("message"),
	}

	from := "gsdeveloper786@gmail.com"
	password := "kjcnqedzmaarcoim"
	toEmailAddress := form.To
	to := []string{toEmailAddress}
	host := "smtp.gmail.com"
	port := "587"
	address := host + ":" + port
	msg := []byte("From:" + form.To + "\r\n" +
		"To:" + "gsdeveloper786@gmail.com" + "\r\n" +
		"Subject:" + form.Subject + "\r\n\r\n" +
		form.Message + "\r\n")
	message := []byte(msg)
	auth := smtp.PlainAuth("", from, password, host)

	err := smtp.SendMail(address, auth, from, to, message)

	if err != nil {
		panic(err)
	}

}
