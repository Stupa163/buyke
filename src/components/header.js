import PropTypes from "prop-types"
import React from "react"
import { Nav, Navbar } from "react-bootstrap"
import basket from "../images/basket.png"

const Header = () => (
  <Navbar bg="light" variant="light">
    <Navbar.Brand href="/">Buyke</Navbar.Brand>
    <Nav className="mr-auto">
      <Nav.Link href="/products">Maillots</Nav.Link>
      <Nav.Link href="#pricing">Récits</Nav.Link>
      <Nav.Link href="#pricing">Rouler</Nav.Link>
    </Nav>
    <Nav>
      <img className={"basket snipcart-checkout"} src={basket} alt=""/>
    </Nav>

  </Navbar>
  )

Header.propTypes = {
  siteTitle: PropTypes.string,
}

Header.defaultProps = {
  siteTitle: ``,
}

export default Header
