# Downloads official PDFs only; verifies the PDF signature. No HTML-to-PDF conversion.
$ErrorActionPreference = 'Stop'
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
$root = Join-Path ([Environment]::GetFolderPath('Desktop')) '骨科学术PDF'
New-Item -ItemType Directory -Force -Path $root | Out-Null
$items = @'
[
  {
    "module": "01_骨髓生态位的空间解析",
    "title": "Three-dimensional quantitative tissue clearing reveals differences in osteovascular niche of aged and young human mesenchymal stromal cells",
    "doi": "10.1038/s41551-026-01645-3",
    "pmcid": "",
    "pmcPdf": "",
    "hasPublicMedia": false
  },
  {
    "module": "01_骨髓生态位的空间解析",
    "title": "Three-dimensional architecture of human bone marrow",
    "doi": "10.1038/s41551-026-01644-4",
    "pmcid": "",
    "pmcPdf": "",
    "hasPublicMedia": false
  },
  {
    "module": "01_骨髓生态位的空间解析",
    "title": "Longitudinal localization of leukaemic stem cells between the metaphysis and central marrow governs their behaviour",
    "doi": "10.1038/s41556-026-01939-3",
    "pmcid": "PMC13179134",
    "pmcPdf": "41556_2026_Article_1939.pdf",
    "hasPublicMedia": true
  },
  {
    "module": "02_颅骨—脑—免疫轴",
    "title": "Brain neuron-derived WDFY1 induces bone loss",
    "doi": "10.1038/s43587-025-01032-8",
    "pmcid": "",
    "pmcPdf": "",
    "hasPublicMedia": false
  },
  {
    "module": "02_颅骨—脑—免疫轴",
    "title": "Targeting skull bone marrow hematopoiesis for the treatment of childhood brain tumors",
    "doi": "10.1038/s41588-026-02511-3",
    "pmcid": "",
    "pmcPdf": "",
    "hasPublicMedia": false
  },
  {
    "module": "02_颅骨—脑—免疫轴",
    "title": "Functional role of skull lymphoid structures in CNS immunosurveillance",
    "doi": "10.1038/s41586-026-10951-4",
    "pmcid": "PMC13626955",
    "pmcPdf": "41586_2026_Article_10951.pdf",
    "hasPublicMedia": true
  },
  {
    "module": "03_骨作为代谢与内分泌器官",
    "title": "Glycerol is a new ally for heat production and bone health",
    "doi": "10.1038/s42255-026-01545-5",
    "pmcid": "",
    "pmcPdf": "",
    "hasPublicMedia": false
  },
  {
    "module": "03_骨作为代谢与内分泌器官",
    "title": "Glycerol-driven TNAP activation in thermogenesis and mineralization",
    "doi": "10.1038/s41586-026-10396-9",
    "pmcid": "",
    "pmcPdf": "",
    "hasPublicMedia": false
  },
  {
    "module": "03_骨作为代谢与内分泌器官",
    "title": "Semaglutide alleviates knee osteoarthritis pain in persons with obesity",
    "doi": "10.1038/s43587-025-00809-1",
    "pmcid": "",
    "pmcPdf": "",
    "hasPublicMedia": false
  },
  {
    "module": "04_骨骼衰老：从机制到干预",
    "title": "Exercise enhances aged chondrocyte health through microRNA-29-enriched extracellular vesicles",
    "doi": "10.1038/s43587-026-01225-9",
    "pmcid": "",
    "pmcPdf": "",
    "hasPublicMedia": false
  },
  {
    "module": "04_骨骼衰老：从机制到干预",
    "title": "Intermittent hypobaric pressure induces selective senescent cell death and alleviates age-related osteoporosis",
    "doi": "10.1038/s41551-025-01584-5",
    "pmcid": "",
    "pmcPdf": "",
    "hasPublicMedia": false
  },
  {
    "module": "04_骨骼衰老：从机制到干预",
    "title": "Menopause-induced 17β-estradiol and progesterone loss increases senescence markers, matrix disassembly and degeneration in mouse cartilage",
    "doi": "10.1038/s43587-024-00773-2",
    "pmcid": "PMC12999526",
    "pmcPdf": "",
    "hasPublicMedia": false
  },
  {
    "module": "05_骨质疏松：新分子与风险预测",
    "title": "Developing WNT-derived bone anabolic peptides for skeletal aging and fracture by reconstructing thumb and index domains of WNT7B",
    "doi": "10.1038/s41551-026-01695-7",
    "pmcid": "",
    "pmcPdf": "",
    "hasPublicMedia": false
  },
  {
    "module": "05_骨质疏松：新分子与风险预测",
    "title": "Rebalancing bone remodelling in osteoporosis",
    "doi": "10.1038/s41551-026-01702-x",
    "pmcid": "",
    "pmcPdf": "",
    "hasPublicMedia": false
  },
  {
    "module": "05_骨质疏松：新分子与风险预测",
    "title": "Sulfated polysaccharides target RANK Lys97 to inhibit osteoclast differentiation and reverse osteoporosis",
    "doi": "10.1038/s41551-026-01744-1",
    "pmcid": "",
    "pmcPdf": "",
    "hasPublicMedia": false
  },
  {
    "module": "06_骨关节炎：遗传图谱 × 智能递送",
    "title": "A disease-severity-responsive nanoparticle enables potent ghrelin messenger RNA therapy in osteoarthritis",
    "doi": "10.1038/s41565-025-02101-0",
    "pmcid": "PMC13389903",
    "pmcPdf": "",
    "hasPublicMedia": false
  },
  {
    "module": "06_骨关节炎：遗传图谱 × 智能递送",
    "title": "Lesion-targeted, severity-responsive nanoparticle delivery for RNA therapy in osteoarthritis",
    "doi": "10.1038/s41565-025-02067-z",
    "pmcid": "",
    "pmcPdf": "",
    "hasPublicMedia": false
  },
  {
    "module": "06_骨关节炎：遗传图谱 × 智能递送",
    "title": "The pentose phosphate pathway controls oxidative protein folding and prevents ferroptosis in chondrocytes",
    "doi": "10.1038/s42255-024-01187-5",
    "pmcid": "PMC11774761",
    "pmcPdf": "42255_2024_Article_1187.pdf",
    "hasPublicMedia": true
  },
  {
    "module": "07_炎症性关节炎：成纤维细胞与细胞疗法",
    "title": "Low-input deep learning platform for citrullinated peptide identification, autoantigen discovery and rheumatoid arthritis treatment stratification",
    "doi": "10.1038/s41551-026-01628-4",
    "pmcid": "",
    "pmcPdf": "",
    "hasPublicMedia": false
  },
  {
    "module": "07_炎症性关节炎：成纤维细胞与细胞疗法",
    "title": "Skin-derived myeloid precursors and joint-resident fibroblasts spread psoriatic disease from skin to joints",
    "doi": "10.1038/s41590-025-02351-z",
    "pmcid": "PMC12764428",
    "pmcPdf": "41590_2025_Article_2351.pdf",
    "hasPublicMedia": true
  },
  {
    "module": "07_炎症性关节炎：成纤维细胞与细胞疗法",
    "title": "Spatial patterning of fibroblast TGFβ signaling underlies treatment resistance in rheumatoid arthritis",
    "doi": "10.1038/s41590-025-02386-2",
    "pmcid": "PMC12956583",
    "pmcPdf": "41590_2025_Article_2386.pdf",
    "hasPublicMedia": true
  },
  {
    "module": "08_骨骼发育图谱与进化遗传",
    "title": "Multiscale analysis and functional validation of the cellular and genetic determinants of skeletal disease",
    "doi": "10.1038/s41588-026-02640-9",
    "pmcid": "PMC13364720",
    "pmcPdf": "41588_2026_Article_2640.pdf",
    "hasPublicMedia": true
  },
  {
    "module": "08_骨骼发育图谱与进化遗传",
    "title": "The gene-regulatory evolution of the human skeleton",
    "doi": "10.1038/s41586-026-11053-x",
    "pmcid": "",
    "pmcPdf": "",
    "hasPublicMedia": false
  },
  {
    "module": "08_骨骼发育图谱与进化遗传",
    "title": "A missing enzyme-rescue metabolite as cause of a rare skeletal dysplasia",
    "doi": "10.1038/s41586-025-09397-x",
    "pmcid": "PMC12488480",
    "pmcPdf": "41586_2025_Article_9397.pdf",
    "hasPublicMedia": true
  },
  {
    "module": "09_骨肿瘤与骨转移微环境",
    "title": "BoneCoT_ multicentre validation of a whole-body skeleton foundation model for bone metastases guided by clinician-derived chain of thought",
    "doi": "10.1038/s41551-026-01736-1",
    "pmcid": "",
    "pmcPdf": "",
    "hasPublicMedia": false
  },
  {
    "module": "09_骨肿瘤与骨转移微环境",
    "title": "Lymphotoxin-β promotes breast cancer bone metastasis colonization and osteolytic outgrowth",
    "doi": "10.1038/s41556-024-01478-9",
    "pmcid": "",
    "pmcPdf": "",
    "hasPublicMedia": false
  },
  {
    "module": "09_骨肿瘤与骨转移微环境",
    "title": "Targeting initial tumour-osteoclast spatiotemporal interaction to prevent bone metastasis",
    "doi": "10.1038/s41565-024-01613-5",
    "pmcid": "",
    "pmcPdf": "",
    "hasPublicMedia": false
  },
  {
    "module": "10_仿生材料、力学与植入物界面",
    "title": "Osteopontin attenuates the foreign-body response to silicone implants",
    "doi": "10.1038/s41551-025-01361-4",
    "pmcid": "PMC12768301",
    "pmcPdf": "",
    "hasPublicMedia": false
  },
  {
    "module": "10_仿生材料、力学与植入物界面",
    "title": "Mechanical forces drive degenerative spine disease through ROCK signalling",
    "doi": "10.1038/s41551-025-01398-5",
    "pmcid": "",
    "pmcPdf": "",
    "hasPublicMedia": false
  },
  {
    "module": "10_仿生材料、力学与植入物界面",
    "title": "Osteopontin de-escalates the foreign body response",
    "doi": "10.1038/s41551-025-01472-y",
    "pmcid": "",
    "pmcPdf": "",
    "hasPublicMedia": false
  }
]
'@ | ConvertFrom-Json
$results = @()
foreach ($item in $items) {
    $moduleDir = Join-Path $root $item.module
    New-Item -ItemType Directory -Force -Path $moduleDir | Out-Null
    $dest = Join-Path $moduleDir ($item.title + '.pdf')
    Write-Host ('Downloading: ' + $item.title)
    $urls = @('https://www.nature.com/articles/' + ($item.doi -replace '^10.1038/', '') + '.pdf')
    if ($item.pmcid -and $item.pmcPdf) {
        $urls += 'https://pmc.ncbi.nlm.nih.gov/articles/' + $item.pmcid + '/pdf/' + $item.pmcPdf
    }
    $ok = $false
    $used = ''
    $errors = @()
    foreach ($url in $urls) {
        $temp = Join-Path $env:TEMP ([Guid]::NewGuid().ToString() + '.part')
        try {
            Invoke-WebRequest -Uri $url -OutFile $temp -UseBasicParsing -TimeoutSec 45
            $stream = [IO.File]::OpenRead($temp)
            try {
                $header = New-Object byte[] 5
                $read = $stream.Read($header, 0, 5)
            } finally { $stream.Dispose() }
            if ($read -ne 5 -or [Text.Encoding]::ASCII.GetString($header) -ne '%PDF-') {
                throw 'Response is not a PDF (may be a login page or CAPTCHA).'
            }
            if (Test-Path $dest) {
                $oldHash = (Get-FileHash -LiteralPath $dest -Algorithm SHA256).Hash
                $newHash = (Get-FileHash -LiteralPath $temp -Algorithm SHA256).Hash
                if ($oldHash -ne $newHash) { throw 'Existing different file preserved; please inspect manually.' }
            } else { Move-Item -LiteralPath $temp -Destination $dest }
            $ok = $true
            $used = $url
            break
        } catch { $errors += $_.Exception.Message }
        finally { if (Test-Path $temp) { Remove-Item -LiteralPath $temp } }
    }
    $results += [PSCustomObject]@{Module=$item.module;Title=$item.title;DOI=$item.doi;PDFDownloaded=$ok;Source=$used;Error=($errors -join '; ')}
}
$report = Join-Path $root ('PDF_download_status_' + (Get-Date -Format 'yyyyMMdd_HHmmss') + '.csv')
$results | Export-Csv -LiteralPath $report -NoTypeInformation -Encoding UTF8
$zipPath = Join-Path ([Environment]::GetFolderPath('Desktop')) ('骨科学术PDF_' + (Get-Date -Format 'yyyyMMdd_HHmmss') + '.zip')
Compress-Archive -Path (Join-Path $root '*') -DestinationPath $zipPath
$count = @($results | Where-Object {$_.PDFDownloaded}).Count
Write-Host ('Downloaded ' + $count + ' of ' + $items.Count + ' official PDFs. See the CSV report for failures.')
Write-Host ('Saved to: ' + $root)
Write-Host ('ZIP: ' + $zipPath)
Read-Host 'Press Enter to close'
