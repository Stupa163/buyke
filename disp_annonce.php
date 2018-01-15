<a href="annonce.php?id=<?php echo $one['ID_ANN']; ?>" class="pas_lien">
    <div class="ann">
        <img src="<?php echo base64_decode($one['MINI']); ?>">
        <div class="date">
            <p><?php echo date_lisible($one['DATE']); ?></p>
        </div>
        <div class="tout">
            <div class="titre">
                <h2><?php echo $one['TITRE']; ?></h2>
            </div>
            <div class="categorie">
                <h4><?php echo nom_categorie((int)$one['CATEGORIE']); ?></h4>
            </div>
            <div class="description">
                <p><?php echo substr($one['DESCRIPTION'],0,75).'...'; ?></p>
            </div>
            <div class="prix">
                <h2><?php echo $one['PRIX']; ?>€</h2>
            </div>
        </div>
    </div>
</a>