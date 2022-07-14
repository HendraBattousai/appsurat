<div class="container">
	<div class="jumbotron text-center">
		<h3>Tentang Kami</h3>
	</div>
	<div style="margin:40px 0">
		<div class="row">
			<div class="col-sm-5">
				<div class="panel-body panel">
					<?php $this::display_page_errors(); ?>
					<h4>Hubungi Kami Via Email</h4>
					<hr />
					<form method="post" action="<?php print_link("info/contact"); ?>">
						<div class="form-group">
							<input type="text" class="form-control" required id="name" name="name" placeholder="Enter Your name *">
						</div>

						<div class="form-group">
							<input type="email" class="form-control" required id="email" name="email" placeholder="Enter Your email *">
						</div>

						<div class="form-group">
							<textarea class="form-control" id="msg" name="msg" rows="4" required placeholder="Enter your Message *"></textarea>
						</div>
						<button type="submit" class="btn btn-primary">Submit</button>
					</form>

				</div>
			</div>

			<div class="col-sm-7">
				<div class="panel panel-body">
					<h4></h4>
					<hr />

					<p>
						
						<p class="adr clearfix">
							<span class="adr-group">
								<span class="street-address">Magang UNIMMA </span><br>
								<span class="country-name">Magelang</span>
							</span>
						</p>
					</p>
					<hr />
					<p>
						<b class="chead"><span class="material-icons">Whatsapp </span> Phone</b><br />
						<a>Rahendra</a></br>
						<span class="editContent"> +6287829950892</span></br>
						<a>Yantria</a></br>
						<span class="editContent"> +6285710344417</span></br>
						<a>Teddy</a></br>
						<span class="editContent">+6287733886555</span></br>
					</p>
					<hr />


				</div>
			</div>
		</div>
	</div>
	<?php
	if (DEVELOPMENT_MODE) {
	
	}
	?>

</div>