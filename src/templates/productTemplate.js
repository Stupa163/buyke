import React from "react"
import { graphql, Link } from "gatsby"
import Layout from "../components/layout"
import "font-awesome/css/font-awesome.min.css"
import { Button, Col } from "react-bootstrap"
import ListGroup from "react-bootstrap/ListGroup"
import Description from "../components/description"
import swal from "sweetalert"
import DocumentTitle from "react-document-title"
import Row from "react-bootstrap/Row"

export const query = graphql`
    query($path: String!) {
        markdownRemark(frontmatter: {path: {eq:$path}}) {
            frontmatter {
                description
                image
                price
                title
                path
                id
            }
        }
    }
`

export default ({ data, pageContext }) => {
  const successModal = (name) => {
    swal("Succes!", `Le produit "${name}" a été ajouté à votre panier`, "success")
  }

  const product = data.markdownRemark.frontmatter
  const Rating =
    <div className="rating">
      <i className="fa fa-star"/>
      <i className="fa fa-star"/>
      <i className="fa fa-star"/>
      <i className="fa fa-star"/>
      <i className="fa fa-star-half-empty"/>
    </div>

  return (
    <Layout>
      <DocumentTitle title={`Buyke | ${product.title}`} >
        <div className={"product"}>
          <ListGroup horizontal>
            <ListGroup.Item><Link to={"/"}>Accueil</Link> </ListGroup.Item>
            <ListGroup.Item><Link to={"/products"}>Produits</Link></ListGroup.Item>
            <ListGroup.Item><Link to={"#"}>{product.title}</Link></ListGroup.Item>
          </ListGroup>
          <Row className={"main"}>
            <Col md={6} className={"infos"}>
              <div className={"title"}>{product.title}</div>
              {Rating}
              <hr/>
              <div className="price">
                {product.price} €
              </div>
              <br/>
              <div className={"descriptionProduct"}>
                Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam deserunt ea tempore? Amet delectus,
                dolor eius magni neque quam recusandae similique sint sunt ullam. Ab adipisci assumenda eius molestiae
                rem.
              </div>
              <div className="sizes">
                <ListGroup horizontal>
                  <ListGroup.Item variant="secondary">XS</ListGroup.Item>
                  <ListGroup.Item variant="secondary">S</ListGroup.Item>
                  <ListGroup.Item disabled>M</ListGroup.Item>
                  <ListGroup.Item disabled>L</ListGroup.Item>
                  <ListGroup.Item variant="secondary">XL</ListGroup.Item>
                </ListGroup>
              </div>
              <Button className={"buyNow snipcart-add-item"}
                      onClick={() => successModal(product.title)}
                      variant="danger"
                      data-item-id={product.id}
                      data-item-price={product.price}
                      data-item-url={`/${product.path}`}
                      data-item-description={product.description}
                      data-item-image={product.image}
                      data-item-custom1-name="Taille"
                      data-item-custom1-options="XS|S|M|L|XL"
                      data-item-name={product.title}>
                Ajouter au panier</Button>
            </Col>
            <Col md={6}>
              <img src={product.image} alt=""/>
            </Col>
          </Row>
          <Description data={product.image}/>
        </div>
      </DocumentTitle>
    </Layout>
  )
}
