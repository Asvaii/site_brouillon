<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8"/>
	<title>Page d'accueil</title>
</head>

<!--Page d'accueil
	Cette page comporte :
		- le logo d'Harvey
		- un formulaire de connexion
		- une petite vitrine de produits Domisep
		- un lien vers les conditions générales d'utilisation
		(- à voir : coordonnées de Domisep)
-->

<body>
	<div id="bloc_page">
		<header>
			<img src="#" alt="Logo d'Harvey"/>
		</header>

		<div id="centre_page">
			<h1>
				Authentification
			</h1>
			<form>
				<label for="pseudo">Nom d'utilisateur</label> : <input type="text" name="pseudo" id="pseudo"><br/>
				<label for="mdp">Mot de passe</label> : <input type="password" name="mdp" id="mdp"><br/>
				<input type="submit" value="Connexion"><br/>
			</form>
			<p>
				Produits disponibles
			</p>
			<div class="produit">
				Nom produit 1
				<img src="#" alt="Image du produit 1"/>
			</div>
			<div class="produit">
				Nom produit 2
				<img src="#" alt="Image du produit 2"/>
			</div>
			<div class="produit">
				Nom produit 3
				<img src="#" alt="Image du produit3"/>
			</div>
		</div>

		<footer>
			<p>
				Copyright 2017 - <a href="#">Conditions générales d'utilisation</a>
			</p>
		</footer>
	</div>
</body>

</html>