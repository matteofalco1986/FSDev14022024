using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static System.Net.Mime.MediaTypeNames;


namespace Week15_Lezione3_Esercitazione.Templates
{
    public partial class FrontOffice : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CountCustomers(object sender, EventArgs e)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["DbCinemaConnection"].ToString();

            SqlConnection connection = new SqlConnection(connectionString);
            // Usare l'oggetto per avviare la connessione
            try
            {
                connection.Open();
                SqlCommand cmdPrint = new SqlCommand("SELECT IDPrenotazione, Nome, Cognome, Sale.NomeSala as Sala, TipoBiglietto.Descrizione as Biglietto\r\nFROM Prenotazione as Prenotazione\r\nJOIN Sale as Sale ON\r\nPrenotazione.Sala = Sale.IDSala\r\nJOIN TipoBiglietto as TipoBiglietto ON\r\nPrenotazione.Biglietto = TipoBiglietto.IDTipoBiglietto", connection);

                SqlDataReader sqlDataReader = cmdPrint.ExecuteReader();

                if (sqlDataReader.HasRows)
                {
                    Response.Write("<table>");
                    Response.Write("<tr>");
                    Response.Write("<th> ID Prenotazione</th>");
                    Response.Write("<th> Nome</th>");
                    Response.Write("<th> Cognome</th>");
                    Response.Write("<th> Sala</th>");
                    Response.Write("<th> Biglietto</th>");
                    Response.Write("</tr>");
                    while (sqlDataReader.Read())
                    {
                        Response.Write($"<tr>" +
                            $"<td>{sqlDataReader["IDPrenotazione"]}</td>" +
                            $"<td>{sqlDataReader["Nome"]}</td>" +
                            $"<td>{sqlDataReader["Cognome"]}</td>" +
                            $"<td>{sqlDataReader["Sala"]}</td>" +
                            $"<td>{sqlDataReader["Biglietto"]}</td>" +
                            $"</tr>");
                    }
                    Response.Write("</table>");

                }

            }
            catch (Exception ex)
            {
                //  Gestione errore
                Response.Write("\n" + ex.Message);
            }
            finally
            {
                //  Chiudere connessione quando abbiamo finito
                if (connection.State == System.Data.ConnectionState.Open)
                {
                    connection.Close();
                    Response.Write("\nConnection Closed");
                }
            }
        }

        protected void BookTickets(object sender, EventArgs e)
        {
            // Connettersi al db
            // Recuperiamo la stringa dal Config


            string connectionString = ConfigurationManager.ConnectionStrings["DbCinemaConnection"].ToString();
            
            // Instanziare l'oggetto SQLConnection
            SqlConnection connection = new SqlConnection(connectionString);

            // Usare l'oggetto per avviare la connessione
            try
            {
                connection.Open();
                SqlCommand cmdInsert = new SqlCommand($"Insert into Prenotazione (Nome, Cognome, Sala, Biglietto) VALUES ('{TxtName.Text}', '{TxtLastName.Text}', '{SelectMenu.SelectedValue}', '{SelectTicket.SelectedValue}')", connection);
                int affectedRow = cmdInsert.ExecuteNonQuery();

                if(affectedRow > 0)
                {
                    Response.Write("Inserimento effettuato");
                }

            } 
            catch (Exception ex)
            {
                //  Gestione errore
                Response.Write("\n" + ex.Message);
            }
            finally
            {
                //  Chiudere connessione quando abbiamo finito
                if(connection.State == System.Data.ConnectionState.Open)
                {
                    connection.Close();
                    Response.Write("\nConnection Closed");
                }
            }
        }

        protected void UpdateBooking(object sender, EventArgs e)
        {

            string connectionString = ConfigurationManager.ConnectionStrings["DbCinemaConnection"].ToString();

            // Instanziare l'oggetto SQLConnection
            SqlConnection connection = new SqlConnection(connectionString);

            // Usare l'oggetto per avviare la connessione
            try
            {
                connection.Open();
                SqlCommand cmdUpdate = new SqlCommand($"UPDATE Prenotazione SET Nome='{TxtName.Text}', Cognome='{TxtLastName.Text}', Sala='{SelectMenu.SelectedValue}', Biglietto='{SelectTicket.SelectedValue}' WHERE IDPrenotazione='{TxtID.Text}'", connection);
                int affectedRow = cmdUpdate.ExecuteNonQuery();

                if (affectedRow > 0)
                {
                    Response.Write("Update effettuato");
                }

            }
            catch (Exception ex)
            {
                //  Gestione errore
                Response.Write("\n" + ex.Message);
            }
            finally
            {
                //  Chiudere connessione quando abbiamo finito
                if (connection.State == System.Data.ConnectionState.Open)
                {
                    connection.Close();
                    Response.Write("\nConnection Closed");
                }
            }
        }
    }
}