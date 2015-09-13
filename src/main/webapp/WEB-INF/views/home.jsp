<!DOCTYPE html>
<html lang="en">
<head>
  <title>Sample Client</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
  <h1>Company Sample</h1>
  <form class="form-horizontal" id="companyInfo" action="company/add">
	<fieldset>
	
	<!-- Form Name -->
	<legend>Form</legend>
	<input id="id" name="id" type="hidden" value="0">
	<!-- Text input-->
	<div class="form-group">
	  <label class="col-md-4 control-label" for="name">Name</label>  
	  <div class="col-md-4">
	  <input id="name" name="name" type="text" placeholder="My Software Firm" class="form-control input-md" required="">
	    
	  </div>
	</div>
	
	<!-- Textarea -->
	<div class="form-group">
	  <label class="col-md-4 control-label" for="address">Address</label>
	  <div class="col-md-4">                     
	    <textarea class="form-control" id="address" name="address"></textarea>
	  </div>
	</div>
	
	<!-- Text input-->
	<div class="form-group">
	  <label class="col-md-4 control-label" for="city">City</label>  
	  <div class="col-md-4">
	  <input id="city" name="city" type="text" placeholder="Copenhagen" class="form-control input-md" required="">
	    
	  </div>
	</div>
	
	<!-- Text input-->
	<div class="form-group">
	  <label class="col-md-4 control-label" for="country">Country</label>  
	  <div class="col-md-4">
	  <input id="country" name="country" type="text" placeholder="Denmark" class="form-control input-md" required="">
	    
	  </div>
	</div>
	
	<!-- Text input-->
	<div class="form-group">
	  <label class="col-md-4 control-label" for="phone">Phone</label>  
	  <div class="col-md-4">
	  <input id="phone" name="phone" type="text" placeholder="+1234567" class="form-control input-md">
	    
	  </div>
	</div>
	
	<!-- Text input-->
	<div class="form-group">
	  <label class="col-md-4 control-label" for="email">Email</label>  
	  <div class="col-md-4">
	  <input id="email" name="email" type="text" placeholder="info@mysoft.com" class="form-control input-md">
	    
	  </div>
	</div>
	<div class="form-group">
        <label class="col-md-4 control-label">Directors</label>
        <div class="col-md-4">
            <input type="text" class="form-control" name="director" />
        </div>
        <div class="col-md-4">
            <button type="button" class="btn btn-default addButton">+</button>
        </div>
    </div>

    <!-- The option field template containing an option field and a Remove button -->
    <div class="form-group hide" id="optionTemplate">
        <div class="col-xs-offset-4 col-md-4">
            <input class="form-control" type="text" name="director" />
        </div>
        <div class="col-md-4">
            <button type="button" class="btn btn-default removeButton">-</button>
        </div>
    </div>
	
	<!-- Button -->
	<div class="form-group">
	  <label class="col-md-4 control-label" for="companysubmit"></label>
	  <div class="col-md-4">
	    <button id="companysubmit" name="companysubmit" class="btn btn-primary">Save</button>
	  </div>
	</div>
	
	</fieldset>
	</form>
 
</div>
<script>
$(document).ready(function() {
    // The maximum number of options
    var MAX_OPTIONS = 5;

    $('#companyInfo')
        
        // Add button click handler
        .on('click', '.addButton', function() {
            var $template = $('#optionTemplate'),
                $clone    = $template
                                .clone()
                                .removeClass('hide')
                                .removeAttr('id')
                                .insertBefore($template),
                $option   = $clone.find('[name="option[]"]');

        })

        // Remove button click handler
        .on('click', '.removeButton', function() {
            var $row    = $(this).parents('.form-group'),
                $option = $row.find('[name="option[]"]');

            // Remove element containing the option
            $row.remove();

        })

        // Called after adding new field
        .on('added.field.fv', function(e, data) {
            // data.field   --> The field name
            // data.element --> The new field element
            // data.options --> The new field options

            if (data.field === 'option[]') {
                if ($('#companyInfo').find(':visible[name="option[]"]').length >= MAX_OPTIONS) {
                    $('#companyInfo').find('.addButton').attr('disabled', 'disabled');
                }
            }
        })

        // Called after removing the field
        .on('removed.field.fv', function(e, data) {
           if (data.field === 'option[]') {
                if ($('#companyInfo').find(':visible[name="option[]"]').length < MAX_OPTIONS) {
                    $('#companyInfo').find('.addButton').removeAttr('disabled');
                }
            }
        });
});
</script>
</body>
</html>