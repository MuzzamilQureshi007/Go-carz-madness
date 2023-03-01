package models

import (
	"database/sql"

	"github.com/MuzzamilQureshi007/go-main-project/config"
	"github.com/MuzzamilQureshi007/go-main-project/entities"
)

type TeamsModel struct {
	db *sql.DB
}

func NewTeams() *TeamsModel {

	db, err := config.DBConnection()
	if err != nil {

		panic(err)
	}
	return &TeamsModel{db: db}
}

func (m *TeamsModel) FindAll(teams *[]entities.Teams) error {

	rows, err := m.db.Query("select * from 	teams")
	if err != nil {

		return err
	}

	defer rows.Close()

	for rows.Next() {

		var data entities.Teams
		rows.Scan(&data.Id, &data.Designation, &data.Name, &data.Detail, &data.Facebook, &data.Github, &data.Dropbox, &data.Twitter, &data.Image)
		*teams = append(*teams, data)
	}
	return nil
}

func (m *TeamsModel) Find(id int64, teams *entities.Teams) error {

	return m.db.QueryRow("select * from teams where id = ?", id).Scan(

		&teams.Id,
		&teams.Designation,
		&teams.Name,
		&teams.Detail,
		&teams.Facebook,
		&teams.Github,
		&teams.Dropbox,
		&teams.Twitter,
		&teams.Image)
}

func (m *TeamsModel) Create(teams *entities.Teams) error {

	result, err := m.db.Exec("insert into teams (designation,name,detail,facebook,github,dropbox,Twitter,image)values(?,?,?,?,?,?,?,?)",
		teams.Designation, teams.Name, teams.Detail, teams.Facebook, teams.Github, teams.Dropbox, teams.Twitter, teams.Image)
	if err != nil {

		return err
	}

	lastInsertId, _ := result.LastInsertId()
	teams.Id = lastInsertId
	return nil

}

func (m *TeamsModel) Update(teams entities.Teams) error {

	_, err := m.db.Exec("update teams set designation = ?, name = ?, detail = ?, facebook = ?, github = ? , dropbox = ? , Twitter = ? , image = ? where id = ?", teams.Designation, teams.Name, teams.Detail, teams.Facebook, teams.Github, teams.Dropbox, teams.Twitter, teams.Image, teams.Id)

	if err != nil {
		return err
	}

	return nil
}

func (m *TeamsModel) Delete(id int64) error {

	_, err := m.db.Exec("delete from teams where id = ?", id)
	if err != nil {
		return err
	}

	return nil
}
