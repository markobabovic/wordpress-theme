<?php
/**
 * Template name: Styleguide
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/
 *
 * @package Money Mouth
 */
?>

<?php get_header(); ?>
<header>
	<div class="container">
		<h1 class="mm-text--center"><?php the_title(); ?></h1>
	</div>
</header><!-- page-header -->
<div class="container">
	<div class="row">
		<div class="col-12">
			<h2 class="p-3 mt-5">Colors</h2>
			<div class="row">
				<div class="col-2 mm-text--center py-3 mm-bg-color--black">
					<span class="mm-color--white">black</span>
				</div>
				<div class="col-2 mm-text--center py-3 mm-bg-color--light-black">
					<span class="mm-color--white">light-black</span>
				</div>
				<div class="col-2 mm-text--center py-3 mm-bg-color--white">
					<span class="mm-color--light-black">white</span>
				</div>
				<div class="col-2 mm-text--center py-3 mm-bg-color--grey">
					<span class="mm-color--black">grey</span>
				</div>
				<div class="col-2 mm-text--center py-3 mm-bg-color--dark-grey">
					<span class="mm-color--black">dark-grey</span>
				</div>
				<div class="col-2 mm-text--center py-3 mm-bg-color--purple">
					<span class="mm-color--white">purple</span>
				</div>
				<div class="col-2 mm-text--center py-3 mm-bg-color--orange">
					<span class="mm-color--white">orange</span>
				</div>
				<div class="col-2 mm-text--center py-3 mm-bg-color--green">
					<span class="mm-color--white">green</span>
				</div>
			</div>
		</div>
		<div class="col-12">
			<h2 class="p-3 mt-5">Headings</h2>
			<h1>H1 Title</h1>
			<h2>H2 Title</h2>
			<h3>H3 Title</h3>
			<h4>H4 Title</h4>
			<h5>H5 Title</h5>
			<h6>H6 Title</h6>
		</div>
		<div class="col-12">
			<h2 class="p-3 mt-5">Paragraphs, lists, blockquotes etc.</h2>
			<p>Text regular<br/>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo. Quisque sit amet est et sapien ullamcorper pharetra. Vestibulum erat wisi, condimentum sed, commodo vitae, ornare sit amet, wisi. Aenean fermentum, elit eget tincidunt condimentum, eros ipsum rutrum orci, sagittis tempus lacus enim ac dui. Donec non enim in turpis pulvinar facilisis. Ut felis. Praesent dapibus, neque id cursus faucibus, tortor neque egestas augue, eu vulputate magna eros eu erat. Aliquam erat volutpat. Nam dui mi, tincidunt quis, accumsan porttitor, facilisis luctus, metus</p>
			<p class="mm-text--large">Text large<br/> Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo. Quisque sit amet est et sapien ullamcorper pharetra. Vestibulum erat wisi, condimentum sed, commodo vitae, ornare sit amet, wisi. Aenean fermentum, elit eget tincidunt condimentum, eros ipsum rutrum orci, sagittis tempus lacus enim ac dui. Donec non enim in turpis pulvinar facilisis. Ut felis. Praesent dapibus, neque id cursus faucibus, tortor neque egestas augue, eu vulputate magna eros eu erat. Aliquam erat volutpat. Nam dui mi, tincidunt quis, accumsan porttitor, facilisis luctus, metus</p>
			<p class="mm-text--small">Text small<br/>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo. Quisque sit amet est et sapien ullamcorper pharetra. Vestibulum erat wisi, condimentum sed, commodo vitae, ornare sit amet, wisi. Aenean fermentum, elit eget tincidunt condimentum, eros ipsum rutrum orci, sagittis tempus lacus enim ac dui. Donec non enim in turpis pulvinar facilisis. Ut felis. Praesent dapibus, neque id cursus faucibus, tortor neque egestas augue, eu vulputate magna eros eu erat. Aliquam erat volutpat. Nam dui mi, tincidunt quis, accumsan porttitor, facilisis luctus, metus</p>
			<p class="mm-text--styled">Text styled<br/>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo. Quisque sit amet est et sapien ullamcorper pharetra. Vestibulum erat wisi, condimentum sed, commodo vitae, ornare sit amet, wisi. Aenean fermentum, elit eget tincidunt condimentum, eros ipsum rutrum orci, sagittis tempus lacus enim ac dui. Donec non enim in turpis pulvinar facilisis. Ut felis. Praesent dapibus, neque id cursus faucibus, tortor neque egestas augue, eu vulputate magna eros eu erat. Aliquam erat volutpat. Nam dui mi, tincidunt quis, accumsan porttitor, facilisis luctus, metus</p>
			<h3>Lists:</h3>
			<ul>
				<li>List item</li>
				<li>List item</li>
				<li>List item</li>
				<li>List item</li>
			</ul>
			<ol>
				<li>List item</li>
				<li>List item</li>
				<li>List item</li>
				<li>List item</li>
			</ol>
			<h3>Blockquote:</h3>
			<blockquote>
				<p>Wir verwenden das Signet, weil wir Kinder - und Jugendarbeit machen und das gerne zeigen.</p>
				<cite>Beat Temperli, Cevi Wädenswil-Au</cite>
			</blockquote>
			<div class="mt-4">
				<h3>Other text styles:</h3>
				<p class="mm-label">Label text</p>
				<p class="mm-label--dimmed">Label Dimmed text</p>
				<p class="mm-link--menu">Link menu text</p>
				<p class="mm-link--mobile-menu">Link mobile menu text</p>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-12">
			<h2 class="p-3 mt-5">Buttons & inputs</h2>
			<a class="mm-button" href="#">Get a quote now</a>
			<div class="mt-3 mb-5 p-5">
				<form action="#" class="mm-form">
					<div class="row">
						<div class="col">
							<label for="text-input">Label</label>
							<input id="text-input" type="text" placeholder="Type here">
						</div>
						<div class="col">
							<label for="textarea">Label</label>
							<textarea id="textarea"></textarea>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>

<?php get_footer(); ?>
