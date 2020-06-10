@extends ('backend.template.layout')

@section('dashboard-content')
<div class="br-mainpanel">
  <div class="br-pagetitle">
    <i class="icon ion-ios-home-outline"></i>
    <div>
      <h4>Create Category</h4>
      <p class="mg-b-0">Do bigger things with Bracket plus, the responsive bootstrap 4 admin template.</p>
    </div>
  </div>

  <div class="br-pagebody">
        <div class="br-section-wrapper">
          <h6 class="br-section-label">Create a Category</h6>
          <p class="br-section-text">Enter a category here.</p>

          <div class="row mg-b-20">
            <div class="col-md">
              <div class="card card-body">
                <!--Create New Category Form Start -->
					<form action="{{ route('storeCategory') }}" method="POST" enctype="multipart/form-data">
						@csrf
						<div class="from-group">
							<label>Category Name</label>
							<input type="text" name="cat_name" class="form-control">
						</div>

						<div class="from-group mb-2">
							<label>Description</label>
							<textarea class="form-control" name="cat_description" rows="3"></textarea>
						</div>

						<div class="from-group mb-2">
							<label>Category Thumbnail</label>
							<input type="file" name="image" class="form-control-file">
						</div>

						<div class="from-group mb-2">
							<label>Parent Category</label>
							<select name="parent_id" class="form-control">
								<option value="0">Select a primary category (Optional)</option>
								@foreach( $parent_categories as $parent)
								<option value="{{ $parent->id }}">{{ $parent->name }}</option>
								@endforeach
							</select>
						</div>

						<div class="from-group">
							<input type="submit" name="addCategory" value="Add Category" class="btn btn-primary">
						</div>
					</form>
				<!--Create New Category Form End -->
              </div><!-- card -->
            </div><!-- col -->
          </div><!-- row -->

        </div><!-- br-section-wrapper -->
      </div>

@endsection