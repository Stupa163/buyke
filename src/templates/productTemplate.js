import React from "react"
import { graphql, Link } from "gatsby"
import Layout from "../components/layout"
import "font-awesome/css/font-awesome.min.css"
import { Button } from "react-bootstrap"
import ListGroup from "react-bootstrap/ListGroup"
import Description from "../components/description"
import swal from "sweetalert"

export const query = graphql`
    query($path: String!) {
        markdownRemark(frontmatter: {path: {eq:$path}}) {
            frontmatter {
                description
                image
                price
                title
                path
            }
        }
    }
`

export default ({ data, pageContext }) => {
  const successModal = (name) => {
    swal("Succes!", `Le produit "${name}" a été ajouté à votre panier`, "success");
  }

  const product = data.markdownRemark.frontmatter;
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
      <link rel="stylesheet" href="https://cdn.snipcart.com/themes/v3.0.12/default/snipcart.css" />

      <div className={"product"}>
        <ListGroup horizontal>
          <ListGroup.Item><Link to={"/"}>Accueil</Link> </ListGroup.Item>
          <ListGroup.Item><Link to={"/products"}>Produits</Link></ListGroup.Item>
          <ListGroup.Item><Link to={"#"}>{product.title}</Link></ListGroup.Item>
        </ListGroup>
        <div className={"main row"}>
          <div className={"infos col-md-6"}>
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
                    data-item-id={pageContext.id}
                    data-item-price={product.price}
                    data-item-url={`/${product.path}`}
                    data-item-description={product.description}
                    data-item-image={product.image}
                    data-item-custom1-name="Taille"
                    data-item-custom1-options="XS|S|M|L|XL"
                    data-item-name={product.title}>
              Ajouter au panier</Button>
          </div>
          <div className="col-md-6">
            <img src={product.image} alt=""/>
          </div>
        </div>
        <Description data={product.image}/>
      </div>
    </Layout>
  )
}
