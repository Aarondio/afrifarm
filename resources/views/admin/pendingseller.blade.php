@extends('admin.layout.app')
@section('content')
    <section class="shop-area-start grey-bg pb-200 pt-50">
        <div class="container">
            <div class="row">
                <div class="col-xl-2 col-lg-12 col-md-12">
                    @include('admin.side')

                </div>
                <div class="col-xl-10 col-lg-12 col-md-12 align-self-start">

                    <div class="tpshop__top ml-60 bg-white px-5 py-4 rounded-3">
                        <h4 class="tpshop__widget-title">Pending Seller</h4>

                        <div class="tab-content pb-3" id="nav-tabContent">
                            @if ($pendingsellers->isNotEmpty())
                                <div class="tab-pane fade show active whight-product" id="nav-popular" role="tabpanel"
                                    aria-labelledby="nav-popular-tab">

                                    <div class="table-responsive">
                                        <table class="table">
                                            <thead>
                                                <th>Sn</th>
                                                <th>Name</th>
                                                <th>Shop Name</th>
                                                <th>Owners Name</th>
                                                <th>Country</th>
                                                <th>Status</th>
                                                <th>Action</th>
                                            </thead>

                                            <tbody>
                                                @php $sn = 1 @endphp
                                                @foreach ($pendingsellers as $seller)
                                                    <tr>
                                                        <td>{{ $sn++ }}</td>
                                                        <td>{{ $seller->fullname }}</td>
                                                        <td>{{ $seller->shop_name }}</td>
                                                        <td>{{ $seller->fullname }}</td>
                                                        <td>{{ $seller->country ?? 'Not set' }}</td>
                                                        <td>{{ $seller->status }}</td>
                                                        <td>
                                                            <form action="{{ route('verifyseller') }}" method="POST">
                                                                @csrf
                                                                <input type="text" name="id"
                                                                    value="{{ $seller->id }}" hidden>
                                                                <button class="btn btn-success btn-sm"> Verify</button>
                                                            </form>
                                                        </td>
                                                    </tr>
                                                @endforeach

                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            @else
                                <h1 class="text-danger">No Pending Seller Verification</h1>
                            @endif
                        </div>
                    </div>

                </div>
            </div>
    </section>
@endsection
