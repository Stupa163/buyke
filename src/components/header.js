import PropTypes from "prop-types"
import React from "react"
import { Nav, Navbar } from "react-bootstrap"

import basket from "../images/basket.png"
import Account from "./account/account"

const Header = () => (
  <Navbar bg="light" variant="light">
    <link rel="stylesheet" href="https://cdn.snipcart.com/themes/v3.0.12/default/snipcart.css"/>
    <div id="snipcart" data-api-key="ZjkzYWZjMjEtNGZkMy00NDYyLTk2MzYtY2I0OTFhZWExZjBhNjM3MjM5MTQ5NDYyNTYzNzk0"
         data-config-add-product-behavior="none" hidden/>
    <script src="https://cdn.snipcart.com/themes/v3.0.12/default/snipcart.js"/>
    <script type="text/javascript" src="https://identity.netlify.com/v1/netlify-identity-widget.js"/>
    <Navbar.Brand href="/">Buyke</Navbar.Brand>
    <Nav className="mr-auto">
      <Nav.Link href="/products">Maillots</Nav.Link>
      <Nav.Link href="#pricing">Récits</Nav.Link>
      <Nav.Link href="#pricing">Rouler</Nav.Link>
    </Nav>
    <Nav className={"icons-container"}>
      <img className={"basket snipcart-checkout"} src={basket} alt=""/>
      <Account/>
    </Nav>
  </Navbar>
)

Header.propTypes = {
  siteTitle: PropTypes.string
}

Header.defaultProps = {
  siteTitle: ``
}

export default Header
