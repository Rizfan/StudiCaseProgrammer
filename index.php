<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Cetak Nota</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <style>
        @media print {
            @page {
                size: letter landscape;
                /* Mengatur ukuran Letter dan mode Landscape */
                margin: 0;
            }
        }
    </style>

</head>

<body>
    <?php
    include 'connection.php';
    $sql = "SELECT  t.transaction_number, t.transaction_insurer,p.patient_name, p.patient_address, p.patient_gender, p.patient_age, d.doctor_name, t.transation_date
            FROM transactions t
            JOIN patients p ON t.patient_id = p.patient_id
            JOIN doctors d ON t.doctor_id = d.doctor_id
            WHERE t.transaction_id = 1;";
    $result = $connection->query($sql);
    $row = $result->fetch_assoc();



    ?>
    <div class="container-fluid mt-3 text-dark p-3 justify-content-center">
        <div class="row align-items-center">
            <div class="col-md-5">
                <h4>Dr. Demo Version</h4>
                <hr class="w-50">
                <p>
                    jln. Jambu No. 1, Jakarta
                    <br>
                    Telp: 021-123456
                </p>
            </div>
            <div class="col-md-6">
                <h3>Nota Biaya Periksa / Obat / Tindakan</h3>
                <p>No. <?= $row['transaction_number'] ?></p>
            </div>
        </div>
        <hr class="border-dark border-3">

        <div class="row align-items-center justify-content-center mb-2">
            <div class="col-md-8">
                <table>
                    <tr>
                        <td class="text-end">Nama Pasien</td>
                        <td style="width: 20px;" class="text-center">:</td>
                        <td class="text-start"><?= $row['patient_name'] ?></td>
                    </tr>
                    <tr>
                        <td class="text-end">Alamat</td>
                        <td style="width: 20px;" class="text-center">:</td>
                        <td class="text-start"><?= $row['patient_address'] ?></td>
                    </tr>
                    <tr>
                        <td class="text-end">Penanggung</td>
                        <td style="width: 20px;" class="text-center">:</td>
                        <td class="text-start"><?= $row['transaction_insurer'] ?></td>
                    </tr>
                </table>
            </div>
            <div class="col-md-4">
                <table>
                    <tr>
                        <td class="text-end">Kelamin</td>
                        <td style="width: 20px;" class="text-center">:</td>
                        <td class="text-start"><?= $row['patient_gender'] ?></td>
                    </tr>
                    <tr>
                        <td class="text-end">Umur</td>
                        <td style="width: 20px;" class="text-center">:</td>
                        <td class="text-start"><?= $row['patient_age'] ?></td>
                    </tr>
                    <tr>
                        <td class="text-end">Tanggal</td>
                        <td style="width: 20px;" class="text-center">:</td>
                        <!-- date format -->
                        <td class="text-start"><?= date('d-m-Y', strtotime($row['transation_date'])) ?></td>
                    </tr>
                </table>
            </div>

            <div class="table-responsive mt-2">
                <table class="table table-bordered text-center table-sm border-dark">
                    <thead class="fw-bold">
                        <tr>
                            <td>No</td>
                            <td>Keterangan</td>
                            <td>Hrg./Tarif Sat.</td>
                            <td>Qty</td>
                            <td>SubTotal</td>
                        </tr>
                    </thead>
                    <tbody>
                        <?php
                        $sql = "SELECT  s.service_name, s.service_price, t.qty
                                FROM transactions_detail t
                                JOIN services s ON t.service_id = s.service_id
                                WHERE t.transaction_id = 1;";
                        $result = $connection->query($sql);
                        $no = 1;
                        $subtotal = 0;
                        while ($row = $result->fetch_assoc()) {
                        ?>
                            <tr>
                                <td><?= $no++ ?></td>
                                <td><?= $row['service_name'] ?></td>
                                <!-- currency rupiah format -->
                                <td><?= number_format($row['service_price'], 0, ',', '.') ?></td>
                                <td><?= $row['qty'] ?></td>
                                <td><?= number_format($row['service_price'] * $row['qty'], 0, ',', '.') ?></td>
                            </tr>
                        <?php
                            $subtotal += $row['service_price'] * $row['qty'];
                        }
                        ?>
                        <tr class="fw-bold">
                            <td colspan="4">Total</td>
                            <td>Rp. <?= number_format($subtotal, 0, ',', '.') ?></td>
                        </tr>
                    </tbody>
                </table>
            </div>

            <div class="row">
                <div class="col-md-2 ms-4 me-5 ps-5">
                    <!-- ttd pasien -->
                    <p>Pasien</p>
                    <br>
                    <br>
                    <br>
                    <hr class="border-dark border-3">
                </div>
                <div class="col-md-2 ms-5 ps-3">
                    <!-- ttd Dokter -->
                    <p>Dokter</p>
                    <br>
                    <br>
                    <br>
                    <hr class="border-dark border-3">
                </div>
            </div>
        </div>


        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>

        <script>
            window.onload = function() {
                window.print(); // Memanggil fungsi cetak otomatis
            };
        </script>
</body>

</html>