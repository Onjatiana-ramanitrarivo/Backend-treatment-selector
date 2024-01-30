
diagnostics = Category.create(title: 'Diagnostics')
examinations = Category.create(title: 'Examinations')

Treatment.create([

    {name: 'angiocardiography',translation: '',state: true, category: diagnostics},
    {name: 'angiography',translation: '',state: true, category: diagnostics},
    {name: 'brain scanning',translation: '',state: true, category: diagnostics},

    {name: 'auscultation',translation: '',state: true, category: examinations},
    {name: 'autopsy',translation: '',state: true, category: examinations},
    {name: 'biopsy',translation: '',state: true, category: examinations},
    
])

cholecystography = Treatment.create(name: 'cholecystography',translation: '',state: true, category: diagnostics)
bronchoscopy = Treatment.create(name: 'bronchoscopy',translation: '',state: true, category: examinations)

TreatmentLine.create([
    {date: '2024-01-30 09:41:09',patientName: 'Ramanitrarivo Onjatiana',state: 'pending',treatment: cholecystography},
    {date: '2024-01-30 07:30:34',patientName: 'Rasoamanana Mickaela',state: 'pending',treatment: bronchoscopy}
])