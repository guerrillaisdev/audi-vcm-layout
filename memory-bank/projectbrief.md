# VCM Scanner Layout Configuration Project

## Objective
Create an optimized VCM Scanner 5.0.4 layout XML file based on the hptlayout.Layout.xml template, incorporating comprehensive vehicle monitoring capabilities with specific focus on performance metrics and diagnostic parameters.

## Scope
- Modify existing Layout XML structure
- Configure parameter displays and gauges
- Implement math channels and triggers
- Set up graphing layouts

## Technical Requirements

### Core Parameters Required
- Engine metrics (RPM, Speed, Load)
- Air/Fuel metrics (MAF, MAP, AFR, Trims)
- Temperature sensors (IAT, ECT)
- Knock detection
- Timing/Ignition data
- Throttle position
- Additional sensors where available (Oil, Catalyst temps)

### Display Configuration
Must implement:
1. Primary gauge cluster 
   - Circular gauges for critical metrics
   - Warning thresholds for key parameters
2. Secondary data displays
   - Digital readouts for supporting metrics
   - Bar graphs where appropriate

### Graphing Requirements
1. Engine Performance Graph
   - RPM and Vehicle Speed on left axis (0-8000, 0-100)
   - Boost and Throttle on right axis (-15/30 PSI, 0-100%)
   - 30-60 second time window

2. Fueling & Timing Graph
   - AFR/Lambda and Fuel Trims on left
   - Timing and Knock on right
   - Matching time window

### Math Channels
Required calculations:
- AFR from Lambda (× 14.7)
- Boost PSI conversion
- Injector duty cycle

### Trigger Setup
Must configure:
1. WOT logging (TP > 80%)
2. Knock event detection (>2V)
3. High boost monitoring (>20 PSI)

## Success Criteria
1. All parameters correctly mapped and displayed
2. Gauges show appropriate ranges and warnings
3. Graphs update smoothly with correct scaling
4. Math channels calculate accurately
5. Triggers function as specified
6. Layout loads and functions in VCM Scanner 5.0.4

## Reference Files
- Base template: hptlayout.Layout.xml
- Target software: VCM Scanner 5.0.4

## Implementation Notes
- Maintain XML schema compatibility
- Preserve core layout structure where practical
- Focus on clean, readable parameter organization
