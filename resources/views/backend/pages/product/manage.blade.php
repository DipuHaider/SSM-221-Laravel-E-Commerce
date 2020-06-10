@extends ('backend.template.layout')

@section('dashboard-content')
<div class="br-mainpanel">
  <div class="br-pagetitle">
    <i class="icon ion-ios-home-outline"></i>
    <div>
      <h4>Manage All Product</h4>
      <p class="mg-b-0">Manage All Products Page</p>
    </div>
  </div>

  <div class="br-pagebody">
        <div class="br-section-wrapper">
          <h6 class="br-section-label">All Products</h6>
          <p class="br-section-text">Manage All Products</p>

          <div class="row mg-b-20">
            <div class="col-md">
              <div class="card card-body">
                <!-- Category Table Start -->
                <table class="table" id="myDataTable">
				  <thead class="thead-dark">
				    <tr>
				      <th scope="col">#Sl</th>
				      <th scope="col">Image</th>
				      <th scope="col">Title</th>
				      <th scope="col">Brand</th>
				      <th scope="col">Category</th>
				      <th scope="col">Slug</th>
				      <th scope="col">Regular Price</th>
				      <th scope="col">Offer Price</th>
				      <th scope="col">Quantity</th>
				      <th scope="col">Is Featured</th>
				      <th scope="col">Status</th>
				      <th scope="col">Action</th>
				    </tr>
				  </thead>


					@php
					$i = 1;
					@endphp

					@foreach ( $products as $product )
					<tr>
				      <th scope="row">{{ $i }}</th>
						<td>
							@php
							 $j = 1;
							@endphp

					      	@foreach ( $product->images as $image )

							@if ( $j > 0 )
							<img src="{{ asset('images/products/' . $image->image) }}" width="25">
							@endif

							@php
							 $j--;
							@endphp

						    @endforeach
					    </td>
				      <td>{{ $product->title }}</td>
				      <td>{{ $product->brand->name }}</td>
				      <td>{{ $product->category->name }}</td>
				      <td>{{ $product->slug }}</td>
				      <td>{{ $product->regular_price }} BDT</td>
				      <td>
					      @if ( $product->offer_price > 0 )
							<span class="badge badge-success">{{ $product->offer_price }} BDT</span>
						  @elseif ( $product->offer_price == 0 )
							<span class="badge badge-danger">No Offer</span>
						  @endif
						</td>
				      <td>{{ $product->quantity }} Pcs</td>
				      <td>
						@if ($product->is_featured == 1 )
							<span class="badge badge-success">Yes</span>
						@elseif ($product->is_featured == 0 )
							<span class="badge badge-danger">No</span>
						@endif
				      </td>
				      <td>
						@if ($product->status == 1 )
							<span class="badge badge-success">Active</span>
						@elseif ($product->status == 0 )
							<span class="badge badge-danger">In-Active</span>
						@endif
				      </td>
				      
				      <td>
							<div class="btn-group">
								<a href="{{ route('editProduct', $product->id) }}" class="btn btn-success btn-sm">Update</a>
								<button  type="button" class="btn btn-danger btn-sm" data-toggle="modal" data-target="#deleteProduct">Delete</button>
							</div>

<!-- Modal -->
<div class="modal fade" id="deleteProduct" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Do you want to delete this Product?</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <button type="button" class="btn btn-primary" data-dismiss="modal">Cancel</button>
        <form action="{{ route('deleteProduct', $product->id) }}" method="POST">
        	@csrf
        	<button type="submit" class="btn btn-danger">Delete</button>
        </form>
        
      </div>
    </div>
  </div>
</div>
				      </td>
				    </tr>

					@php
					$i++;
					@endphp

					@endforeach

					

				  </tbody>
				</table>
				<!-- Brand Table End -->
              </div><!-- card -->
            </div><!-- col -->
          </div><!-- row -->

        </div><!-- br-section-wrapper -->
      </div>

@endsection