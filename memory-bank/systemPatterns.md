# System Patterns: VCM Scanner Layout Configuration

## System Architecture
The VCM Scanner layout is structured as an XML-based configuration that defines how vehicle data is displayed and processed. The architecture follows a hierarchical pattern:

```
Layout
├── Tabs
│   ├── Gauges
│   ├── Digital Displays
│   └── Graphs
├── Math Channels
├── Triggers
└── Settings
```

## Key Technical Decisions

### XML Structure Preservation
- Maintain compatibility with VCM Scanner 5.0.4 XML schema
- Preserve core layout structure from hptlayout.Layout.xml template
- Extend rather than replace existing functionality

### Parameter Organization
- Group parameters by functional systems (Engine, Fueling, Temperatures, etc.)
- Prioritize critical parameters in primary displays
- Use secondary displays for supporting metrics

### Display Strategy
- Use circular gauges for primary metrics that benefit from visual range representation
- Implement digital displays for precise values
- Apply bar graphs for parameters where relative values are important
- Configure appropriate min/max ranges for each parameter based on modified components

### Graphing Approach
- Create dedicated graphs for related parameter groups
- Configure appropriate scaling for modified components (e.g., higher boost ranges)
- Maintain consistent time windows across graphs for correlation
- Use left/right axes strategically to show related parameters together

## Design Patterns

### Parameter Grouping Pattern
Parameters are organized into logical groups based on vehicle subsystems:
- Engine Performance (RPM, Speed, Load)
- Fueling System (MAF, MAP, AFR, Trims)
- Temperature Monitoring (IAT, ECT, Oil, Catalyst)
- Ignition System (Timing, Knock)
- Boost Control (Wastegate, N75, Pressure)

### Visual Hierarchy Pattern
- Critical parameters: Large circular gauges with warning zones
- Secondary parameters: Digital displays with colored thresholds
- Tertiary parameters: Compact displays or included only in graphs

### Math Channel Pattern
Math channels follow a consistent pattern:
1. Identify source parameter(s)
2. Apply appropriate formula
3. Define output range and display properties
4. Document calculation purpose

### Trigger Pattern
Triggers follow a standard implementation:
1. Define parameter to monitor
2. Set threshold condition
3. Configure logging action
4. Set reset conditions

## Component Relationships

### Parameter to Display Relationship
- Each parameter can appear in multiple display contexts
- Parameters maintain consistent units and scaling across displays
- Related parameters are visually grouped together

### Math Channel Dependencies
- Math channels depend on source parameters
- Derived values may be used in displays and triggers
- Calculation chain is optimized to minimize processing load

### Trigger to Logging Relationship
- Triggers initiate specific logging actions
- Multiple triggers can be active simultaneously
- Trigger states are visually indicated in the interface

### Tab Navigation Structure
- Primary tab contains most critical gauges
- Secondary tabs organized by functional area
- Graph tabs provide detailed trend analysis
- Navigation follows logical diagnostic workflow