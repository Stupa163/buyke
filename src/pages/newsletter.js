import { Form, FormGroup, FormLabel } from "react-bootstrap"
import React from "react"
import Layout from "../components/layout"
import DocumentTitle from "react-document-title"
import CustomCarousel from "../components/customCarousel"
import axios from "axios"
import swal from "sweetalert"

class Newsletter extends React.Component {
  constructor(props) {
    super(props)
    this.state = { email: "" }

    this.handleChange = this.handleChange.bind(this)
    this.handleSubmit = this.handleSubmit.bind(this)
  }

  handleChange(event) {
    const target = event.target
    this.setState({ [target.name]: target.value }) //value of the form element


  }

  handleSubmit(e) {
    e.preventDefault()

    axios.get(`https://buyke.netlify.app/.netlify/functions/subscribe?mail=${this.state.email}`)
      .then((response) => {
        swal({
          title: "Inscription réussie",
          text: "Vous recevrez maintenant toutes nos nouveautés par mail",
          icon: "success"
        })
      })
      .catch((error) => {
        console.log(error.response)
        swal({
          title: "Erreur",
          text: "Vous êtes déjà abonné à notre newsletter",
          icon: "error"
        })
      })
  }

  render() {
    return (
      <Layout carousel={false}>
        <DocumentTitle title="Buyke | Abonnez vous à notre newsletter">
          <div>
            <CustomCarousel/>
            <Form className={"newsletter container"} onSubmit={this.handleSubmit}>
              <FormGroup>
                <FormLabel htmlFor="mailImput">Votre adresse mail</FormLabel>
                <Form.Control as="input" type="text" name="email" value={this.state.name} id="mailImput"
                              placeholder="jean.dupond@gmail.com" onChange={this.handleChange} required/>
              </FormGroup>
              <input type="submit" value="Abonnez vous" className="btn btn-primary"/>
            </Form>
          </div>
        </DocumentTitle>
      </Layout>
    )
  }
}

export default Newsletter

