@extends('layout/main')

@section('container')
    <?php
        $id = Session::get('id_user');
    ?>
    <div class="main">
        <!-- MAIN CONTENT -->
        <div class="main-content">
            <div class="container-fluid">
                <div class="panel">
                    <div class="panel-heading">
                        <h3 class="panel-title" style="font-size: 60px">Tunggakan SPP</h3>
                    </div>
                    <div class="panel-body">
                        @foreach($adminSpp as $data2)
                        <form action="/buktiPembayaran/{{$data2 -> id_spp_admin}}" method="POST">
                            @endforeach
                            @method('post')
                            {{ csrf_field() }}
                        <table class="table table-hover">
                            <thead>
                            <tr>
                                <th>Mulai Pembayaran</th>
                                <th>Jatuh Tempo</th>
                                <th>Jumlah Tagihan</th>
                                <th>Upload Bukti Pembayaran</th>
                            </tr>

                            </thead>
                            <tbody>

                            @foreach($adminSpp as $data)
                                <tr>
                                    <th>{{$data->tanggal_aktual_pembayaran}}</th>
                                    <th>{{$data->tanggal_jatuh_tempo}}</th>
                                    <th>{{$data->harga_spp_detail}}</th>
                                    <th><input type="file" name="bukti_pembayaran" ></th>
{{--                                    <th>@currency($data->harga_spp_detail)</th>--}}
                                    <th> </th>
                                </tr>
                            @endforeach
                            <tr>
{{--                                <th>Total Tagihan =  &nbsp @currency($totalSpp)</th>--}}
{{--                                <th></th>--}}
                            </tr>
                            </tbody>
                           <div>
                               <a href="{{ url('/export/'.$id) }}">Export</a>
                           </div>

                        </table>
                            <input type="submit" name="">
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

@endsection
